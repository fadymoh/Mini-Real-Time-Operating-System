#include "TaskControlBlock.h"

void TCB_INIT_FreeList(OS_TCB* head, int n){

  head = (OS_TCB*) calloc(sizeof(OS_TCB));
  OS_TCB* temp = head;

  for(int i = 1; i < n; i++){
    temp->OSTCBNext = OS_TCB*) calloc(sizeof(OS_TCB));
    temp = temp->OSTCBNext;
  }

}



/*

  Constants:
    - OS_LOWEST_PRIO
    - OS_PRIO_SELF
    - OS_PRIO_INVALID
    - OS_STAT_RDY
    - OS_NO_ERR
    - OS_NO_MORE_TCB
    - OS_IDLE_PRIO
    - OS_TASK_SUSPEND_IDLE
    - OS_LOWEST_PRIO
    - OS_PRIO_SELF
    - OS_PRIO_INVALID
    - OS_STAT_SUSPEND
    - OS_TASK_SUSPEND_PRIO
    -


  Data Not Yet Defined:
    - OSTCBPrioTbl
    - OSTCBFreeList
    - OSTCBList
    - OSRdyGrp
    - OSRdyTbl



  Functions Not Yet Defined:
    - OS_ENTER_CRITICAL
    - OS_EXIT_CRITICAL
    - OSTaskStkInit
    - OSTaskCreateHook
    - OS_Sched

*/



INT8U OS_TCBInit (INT8U prio, OS_STK *ptos){

  OS_TCB *ptcb;
  OS_ENTER_CRITICAL();
  ptcb = OSTCBFreeList;

  if (ptcb != (OS_TCB *)0) {
     OSTCBFreeList = ptcb->OSTCBNext;
     OS_EXIT_CRITICAL();
     ptcb->OSTCBStkPtr  = ptos;
     ptcb->OSTCBPrio    = (INT8U)prio;
     ptcb->OSTCBStat    = OS_STAT_RDY;
     ptcb->OSTCBDly     = 0;

     ptcb->OSTCBY       = prio >> 3;
     ptcb->OSTCBBitY    = OSMapTbl[ptcb->OSTCBY];
     ptcb->OSTCBX       = prio & 0x07;
     ptcb->OSTCBBitX    = OSMapTbl[ptcb->OSTCBX];

     ptcb->OSTCBEventPtr = (OS_EVENT *)0;
     ptcb->OSTCBMsg = (void *)0;


     // NOT REALLY REQUIRED!!
     // OSTaskCreateHook(ptcb);


     OS_ENTER_CRITICAL();
     OSTCBPrioTbl[prio] = ptcb;
     ptcb->OSTCBNext = OSTCBList;
     ptcb->OSTCBPrev = (OS_TCB *)0;

     if (OSTCBList != (OS_TCB *)0)
       OSTCBList->OSTCBPrev = ptcb;


      OSTCBList = ptcb;
      OSRdyGrp |= ptcb->OSTCBBitY;
      OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
      OS_EXIT_CRITICAL();
      return (OS_NO_ERR);
     }

     OS_EXIT_CRITICAL();
     return (OS_NO_MORE_TCB);
}



INT8U OSTaskCreate(void (*task)(void *pd), void *pdata, OS_STK *ptos, INT8U prio){

  void *psp;
  INT8U err;

  if (prio > OS_LOWEST_PRIO)
    return (OS_PRIO_INVALID);


  OS_ENTER_CRITICAL();

  if (OSTCBPrioTbl[prio] == (OS_TCB *)0){
    OSTCBPrioTbl[prio] = (OS_TCB *)1;

    OS_EXIT_CRITICAL();


    psp = (void *)OSTaskStkInit(task, pdata, ptos, 0);
    err = OS_TCBInit(prio, psp);

    if (err == OS_NO_ERR) {
      OS_ENTER_CRITICAL();
      OSTaskCtr++;
      OS_EXIT_CRITICAL();

      if (OSRunning == TRUE)
        OS_Sched();

    }else{

      OS_ENTER_CRITICAL();
      OSTCBPrioTbl[prio] = (OS_TCB *)0;
      OS_EXIT_CRITICAL();

    }

    return (err);
  }

  OS_EXIT_CRITICAL();
  return (OS_PRIO_EXIST);
}



INT8U OSTaskSuspend (INT8U prio){
  BOOLEAN self; // MUST DEFINE BOOLEAN
  OS_TCB *ptcb;


  // if (prio == OS_IDLE_PRIO)
  //   return (OS_TASK_SUSPEND_IDLE);
  //

  if (prio >= OS_LOWEST_PRIO && prio != OS_PRIO_SELF)
    return (OS_PRIO_INVALID);



  OS_ENTER_CRITICAL();

  if (prio == OS_PRIO_SELF) {
    prio = OSTCBCur->OSTCBPrio;
    self = TRUE;
  } else if (prio == OSTCBCur->OSTCBPrio) {
      self = TRUE;
  }
  else{
    self = FALSE;
  }

  ptcb = OSTCBPrioTbl[prio];
  if (ptcb == (OS_TCB *)0) {
    OS_EXIT_CRITICAL();
    return (OS_TASK_SUSPEND_PRIO);
  }


  if ((OSRdyTbl[ptcb->OSTCBY] &= ~ptcb->OSTCBBitX) == 0x00) {
     OSRdyGrp &= ~ptcb->OSTCBBitY;
   }

   ptcb->OSTCBStat |= OS_STAT_SUSPEND;
   OS_EXIT_CRITICAL();
   if (self == TRUE) {
     OS_Sched();
  }

  return (OS_NO_ERR);
}



INT8U OSTaskResume (INT8U prio){
  OS_TCB *ptcb;

  if (prio >= OS_LOWEST_PRIO)
    return (OS_PRIO_INVALID);

  OS_ENTER_CRITICAL();
  ptcb = OSTCBPrioTbl[prio];
  if (ptcb == (OS_TCB *)0) {
    OS_EXIT_CRITICAL();
    return (OS_TASK_RESUME_PRIO);
  }


  if ((ptcb->OSTCBStat & OS_STAT_SUSPEND) != 0x00) {
    if (((ptcb->OSTCBStat &= ~OS_STAT_SUSPEND) == OS_STAT_RDY) && (ptcb->OSTCBDly == 0)) {
      OSRdyGrp |= ptcb->OSTCBBitY;
      OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
      OS_EXIT_CRITICAL();
      OS_Sched();

    }else{
      OS_EXIT_CRITICAL();
    }
    return (OS_NO_ERR);

  }

  OS_EXIT_CRITICAL();
  return (OS_TASK_NOT_SUSPENDED);
}
