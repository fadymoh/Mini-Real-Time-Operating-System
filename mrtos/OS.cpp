#include "OS_CONF.h"


EventControlBlock freeEvents[OS_MAX_EVENTS];
OS_TCB freeTCBs[OS_MAX_TASKS]; 

void OS_ENTER_CRITICAL() {}
void OS_EXIT_CRITICAL() {}
OS_STK* OSTaskStkInit(void (*task)(void *pd),void* pdata ,OS_STK* ptos, INT16U opt)
{
	INT32U *stk;

	// The Task stack will be as follows:
	/*
		x27 <--- top of stack
		x26
		x25
		x24
		x23
		x22
		x21
		x20
		x19
		x18
		x9
		x8
		PC <- PTOS
	*/

	stk = (INT32U *)ptos;

	//printf("stk pointer: %p\n", stk);
	*stk-- = (INT32U)task;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk-- = (INT32U)0x0;
	*stk = (INT32U)0x0;
	


	return ((OS_STK *)stk);
}
void OSTaskCreateHook() {}
void OS_TASK_SW()
{
	// asm volatile( 
		
	// 	"pushq %%rbx;\n\t" 
	// 	"pushq %%rbp;\n\t" 
	// 	"pushq %%r12;\n\t"
	// 	"pushq %%r13;\n\t"
	//   "pushq %%r14;\n\t" 
	// 	"pushq %%r15;\n\t"

	// 	"movq %%rsp, %0;\n\t"
	// 	"movq %1, %%rsp;\n\t"

	// 	"popq %%r15;\n\t" 
	// 	"popq %%r14;\n\t" 
	// 	"popq %%r13;\n\t" 
	// 	"popq %%r12;\n\t" 
	// 	"popq %%rbp;\n\t" 
	// 	"popq %%rbx;\n\t"
	// 	 : "=m" (OSTCBCur->OSTCBStkPtr),   "=m" (OSTCBHighRdy->OSTCBStkPtr));

}
void OS_Sched()
{
	
	INT8U y;
	OS_ENTER_CRITICAL();
	y = OSUnMapTbl[OSRdyGrp];
	OSPrioHighRdy = (INT8U) ((y << 3) + OSUnMapTbl[OSRdyTbl[y]]);
	//printf("Highest Priority: %d\n", OSPrioHighRdy);
	//printf("scheduling\n");
	if (OSPrioHighRdy != OSPrioCur)
	{
		// Do all the pushes for the current task
		register int rsp asm("sp");
		INT32U *stk;
		stk = (INT32U *) rsp;
		stk--;
		*stk = (INT32U) OSTCBCur->returnAddress;
		
		asm volatile(
			"addi sp, sp, -52;\n\t"
			"sw x8, 44(sp);\n\t"
			"sw x9, 40(sp);\n\t"
			"sw x18, 36(sp);\n\t"
			"sw x19, 32(sp);\n\t"
			"sw x20, 28(sp);\n\t"
			"sw x21, 24(sp);\n\t"
			"sw x22, 20(sp);\n\t"
			"sw x23, 16(sp);\n\t"
			"sw x24, 12(sp);\n\t"
			"sw x25, 8(sp);\n\t"
			"sw x26, 4(sp);\n\t"
			"sw x27, 0(sp);\n\t"
		);

		// save new stack pointer
		OSTCBCur->OSTCBStkPtr = (OS_STK*)rsp;


		// Switch to new highest priority task
		OSPrioCur = OSPrioHighRdy;
		OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
		OSTCBCur = OSTCBHighRdy;


		// load new stack pointer
		rsp = (int)OSTCBCur->OSTCBStkPtr;


		// pop all register values and restore PC and jump to it
		asm volatile(
			"lw x28, 48(sp);\n\t"
			"lw x8, 44(sp);\n\t"
			"lw x9, 40(sp);\n\t"
			"lw x18, 36(sp);\n\t"
			"lw x19, 32(sp);\n\t"
			"lw x20, 28(sp);\n\t"
			"lw x21, 24(sp);\n\t"
			"lw x22, 20(sp);\n\t"
			"lw x23, 16(sp);\n\t"
			"lw x24, 12(sp);\n\t"
			"lw x25, 8(sp);\n\t"
			"lw x26, 4(sp);\n\t"
			"lw x27, 0(sp);\n\t"
			"addi sp, sp, 52;\n\t"
			"jalr x0, x28, 0 ;\n\t"
		);







		//printf("stk pointer before pushes: %x\n", rsp);

		// asm volatile(
		// "addi sp, sp, -52"
		// "sw x8, sp"
		// "pushq %%rbx;\n\t" 
		// "pushq %%rbp;\n\t" 
		// "pushq %%r12;\n\t"
		// "pushq %%r13;\n\t"
	  // "pushq %%r14;\n\t" 
		// "pushq %%r15;\n\t"

		// "movq %%rsp, %0;\n\t":
		// "=m" (OSTCBCur->OSTCBStkPtr)
		// 	);
		//printf("stk pointer after pushes: %x\n", rsp);

		// Save the new stack pointer

		// OSPrioCur = OSPrioHighRdy;
		// OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
		// OSTCBCur = OSTCBHighRdy;


		// Restore stack pointer
	// asm volatile(
		
	// 	"movq %0, %%rsp;\n\t"

	// 	"popq %%r15;\n\t" 
	// 	"popq %%r14;\n\t" 
	// 	"popq %%r13;\n\t" 
	// 	"popq %%r12;\n\t" 
	// 	"popq %%rbp;\n\t" 
	// 	"popq %%rbx;\n\t":
	// 	"=m" (OSTCBCur->OSTCBStkPtr));


		// Do all the pops then jump

		// asm volatile(		
		// "mov %0, %%rbp;\n\t"
		// "jmp %%rbp;\n\t"
		//  :"=m" (OSTCBHighRdy->returnAddress));


		//OSTCBCur->OSTCBStkPtr = 
		//OS_TASK_SW();
		/*
			PUSH R1, R2, R3 and R4 onto the current stack; See F3.6(2)
			OSTCBCur->OSTCBStkPtr = SP; See F3.6(3)
			OSTCBCur = OSTCBHighRdy; See F3.7(1)
			SP = OSTCBHighRdy->OSTCBStkPtr; See F3.7(2)
			POP R4, R3, R2 and R1 from the new stack; See F3.7(3)
			Execute a return from interrupt instruction; See F3.7(4)
		*/
	}
	OS_EXIT_CRITICAL();
}


void OS_Init()
{
	//printf("eventHead before: %p\n",OSEventFreeList);
	OS_EventWaitListInit();
	// printf("eventHead after: %p\n",OSEventFreeList);
	// printf("tcbhead before: %p\n",OSTCBFreeList);
	OS_TaskFreePool();
	// printf("tcbhead after: %p\n",OSTCBFreeList);
}


void OS_TaskFreePool(){

  OSTCBFreeList = freeTCBs;
  OS_TCB* temp = OSTCBFreeList;

  for(int i = 1; i < OS_MAX_TASKS; i++){
    temp->OSTCBNext = &freeTCBs[i];
    temp = static_cast<OS_TCB*> (temp->OSTCBNext);
  }

	temp->OSTCBNext = (OS_TCB*)0;


}


void OS_EventWaitListInit()
{
	OSEventFreeList = freeEvents;
	EventControlBlock* curr = OSEventFreeList;

	for (INT8 i = 1; i < OS_MAX_EVENTS; ++i)
	{
		curr->OSEventPtr = &freeEvents[i];
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
	}

	curr->OSEventPtr = (EventControlBlock*)0;

}
EventControlBlock* OSCreateSemaphore()
{
	EventControlBlock* pevent = OSEventFreeList;
	if (OSEventFreeList != (EventControlBlock*) 0)
		OSEventFreeList = (EventControlBlock*) OSEventFreeList->OSEventPtr;
	if (pevent != (EventControlBlock*) 0)
	{
		pevent->OSEventType = OS_EVENT_TYPE_SEM;
		pevent->OSEventCnt = 0;
		pevent->OSEventPtr = (void*)0;
		pevent->OSEventGrp = 0x00;
	}
	return pevent;
}

void OS_EventTaskWait(EventControlBlock* pevent)
{
	OSTCBCur->OSTCBEventPtr = pevent;
	if ((OSRdyTbl[OSTCBCur->OSTCBY] &= ~OSTCBCur->OSTCBBitX) == 0x00)
		OSRdyGrp &= ~OSTCBCur->OSTCBBitY;
	pevent->OSEventTbl[OSTCBCur->OSTCBY] |= OSTCBCur->OSTCBBitX;
	pevent->OSEventGrp 					 |= OSTCBCur->OSTCBBitY;
}

INT8U OSSemPost(EventControlBlock* pevent)
{
	if (pevent->OSEventGrp != 0x00)
	{
		EventTaskRdy(pevent, (void*) 0, OS_STAT_SEM);
		OS_Sched();
		return OS_NO_ERR;
	}
	if(pevent->OSEventCnt < 65535) // do not overflow
	{
		pevent->OSEventCnt++;
		return OS_NO_ERR;
	}
	return OS_SEM_OVERFLOW;
}
void OSSemPend(EventControlBlock* pevent, INT8U* err)
{

	//void* return_address = __builtin_return_address(0);
	//OSTCBCur->returnAddress = return_address;
	
	register int ra asm("x1");
	OSTCBCur->returnAddress = (void *)ra;

	if (pevent == (EventControlBlock*) 0)
	{
		*err = OS_ERR_PEVENT_NULL;
		return;
	}
	if (pevent->OSEventType != OS_EVENT_TYPE_SEM)
	{
		*err = OS_ERR_EVENT_TYPE;
		return;
	}
	if (pevent->OSEventCnt > 0)
	{
		pevent->OSEventCnt--;
		*err = OS_NO_ERR;
		return;
	}
	OSTCBCur->OSTCBStat |= OS_STAT_SEM;
	OS_EventTaskWait(pevent);
	
	OS_Sched();

	OSTCBCur->OSTCBEventPtr = (EventControlBlock *)0;
	*err = OS_NO_ERR;
	// printf("came here!\n");
}
void OSStartHighRdy()
{
	OSRunning = TRUE;
	// printf("Initiating the Operating System!\n");

	register int sp asm("x2");
	sp = (int) OSTCBCur->OSTCBStkPtr;

	asm volatile(
		"addi	x2,x2, 48;\n\t"
		"lw x28, 0(x2);\n\t"
		"addi	x2,x2, 4;\n\t"
		"jalr x0, x28, 0 ;\n\t"
		);
}
void OS_Start(void)
{
	INT8U y;
	INT8U x;
	if (OSRunning == FALSE)
	{
		y = OSUnMapTbl[OSRdyGrp];
		x = OSUnMapTbl[OSRdyTbl[y]];
		// printf("OSPrioHighRdy before: %d\n", OSPrioHighRdy);

		OSPrioHighRdy = (INT8U)((y << 3) + x);
		// printf("OSPrioHighRdy after: %d\n", OSPrioHighRdy);

		OSPrioCur = OSPrioHighRdy;
		OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
		OSTCBCur = OSTCBHighRdy;
		OSStartHighRdy();
	}
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
  //  if (self == TRUE) {
  //    OS_Sched();
  // }

  return (OS_NO_ERR);
}

