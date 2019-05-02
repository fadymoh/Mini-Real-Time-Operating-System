#include "OS_CONF.h"


 struct OS_TCB* OSTCBFreeList = NULL; 
 struct OS_TCB* OSTCBList = NULL;
 struct OS_TCB* OSTCBPrioTbl[OS_MAX_TASKS];
 struct OS_TCB* OSTCBCur = NULL;
 struct OS_TCB* OSTCBHighRdy = NULL;
 
 BOOLEAN OSRunning ;
 INT8U OSRdyGrp = 0x00;
 INT8U OSRdyTbl[8] = {0};
 INT8U OSPrioCur = 63;
 INT8U OSPrioHighRdy = 63;
 INT8U OSTaskCtr = 0;
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
    - OSTCBPrioTbl (done)
    - OSTCBFreeList (done)
    - OSTCBList (done)
    - OSRdyGrp (done)
    - OSRdyTbl (done)



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
  printf("initializing TCB\n");

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

     ptcb->OSTCBEventPtr = (EventControlBlock *)0;
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



INT8U OSTaskCreate(void (*mtask)(void *pd), void *pdata, OS_STK *ptos, INT8U prio){

  void *psp;
  INT8U err;
  if (prio > OS_LOWEST_PRIO)
    return (OS_PRIO_INVALID);


  OS_ENTER_CRITICAL();

  if (OSTCBPrioTbl[prio] == (OS_TCB *)0){
    OSTCBPrioTbl[prio] = (OS_TCB *)1;
    
   
    OS_EXIT_CRITICAL();


    psp = (void *)OSTaskStkInit(mtask, pdata, ptos, 0);
    err = OS_TCBInit(prio, (OS_STK*)psp);
    printf("error: %d\n", err);
    if (err == OS_NO_ERR) {
      OS_ENTER_CRITICAL();
      OSTaskCtr++;
      OS_EXIT_CRITICAL();
      printf("creating prio: %d\n", prio);

      // calculate the address of the task
      void (*taskAddress) (void*) = mtask;
      OSTCBPrioTbl[prio]->returnAddress = (void*)taskAddress;

      if (OSRunning == TRUE){
        printf("scheduling 2\n");
        // OS_Sched();
      }

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
      //OS_Sched();

    }else{
      OS_EXIT_CRITICAL();
    }
    return (OS_NO_ERR);

  }

  OS_EXIT_CRITICAL();
  return (OS_TASK_NOT_SUSPENDED);
}
