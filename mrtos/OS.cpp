#include "OS_CONF.h"


EventControlBlock freeEvents[OS_MAX_EVENTS];
OS_TCB freeTCBs[OS_MAX_TASKS];
OS_Q FreeOSQ[OS_MAX_EVENTS];


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
	
}

// THIS IS THE CONTEXT SWITCH HANDLER
// CALLED BY THE CPU WHEN THE INTERRUPT "OSTSKSW()" is called anywhere!

// void OS_CTX_SW(){

// 	asm volatile(
// 			"addi sp, sp, -48;\n\t"
// 			"sw x8, 44(sp);\n\t"
// 			"sw x9, 40(sp);\n\t"
// 			"sw x18, 36(sp);\n\t"
// 			"sw x19, 32(sp);\n\t"
// 			"sw x20, 28(sp);\n\t"
// 			"sw x21, 24(sp);\n\t"
// 			"sw x22, 20(sp);\n\t"
// 			"sw x23, 16(sp);\n\t"
// 			"sw x24, 12(sp);\n\t"
// 			"sw x25, 8(sp);\n\t"
// 			"sw x26, 4(sp);\n\t"
// 			"sw x27, 0(sp);\n\t"
// 	);

// 	register int rsp asm("x2");
// 	OSTCBCur->OSTCBStkPtr = (OS_STK*)rsp;

// 	OSTCBCur = OSTCBHighRdy;

// 	// load new stack pointer
// 	rsp = (int)OSTCBCur->OSTCBStkPtr;

// 	// pop all register values and restore PC and jump to it
// 	asm volatile(	//printf("stk pointer: %p\n", stk);

// 		"lw x8, 44(	//printf("stk pointer: %p\n", stk);

// 		"lw x9, 40(	//printf("stk pointer: %p\n", stk);

// 		"lw x18, 36	//printf("stk pointer: %p\n", stk);

// 		"lw x19, 32	//printf("stk pointer: %p\n", stk);

// 		"lw x20, 28	//printf("stk pointer: %p\n", stk);

// 		"lw x21, 24(sp);\n\t"
// 		"lw x22, 20(sp);\n\t"
// 		"lw x23, 16(sp);\n\t"
// 		"lw x24, 12(sp);\n\t"
// 		"lw x25, 8(sp);\n\t"
// 		"lw x26, 4(sp);\n\t"
// 		"lw x27, 0(sp);\n\t"
// 		"addi sp, sp, 48;\n\t"
// 	);

// 	IRET();

//     // 4c:	00002d37          	lui	s10,0x2
//     //   50:	7a4d0d13          	addi	s10,s10,1956 # 27a4 <OSTCBCur>
//     //   54:	000d2e03          	lw	t3,0(s10)
//     //   58:	002e2023          	sw	sp,0(t3)
//     //   5c:	00002db7          	lui	s11,0x2
//     //   60:	7a8d8d93          	addi	s11,s11,1960 # 27a8 <OSTCBHighRdy>
//     //   64:	000dae83          	lw	t4,0(s11)
//     //   68:	01dd2023          	sw	t4,0(s10)
//     //   6c:	000ea103          	lw	sp,0(t4)

// 	//  5d0:	00010713          	mv	a4,sp
//   //    5d4:	000027b7          	lui	a5,0x2
//   //    5d8:	7a47a783          	lw	a5,1956(a5) # 27a4 <OSTCBCur>
//   //    5dc:	00e7a023          	sw	a4,0(a5)
//   //    5e0:	000027b7          	lui	a5,0x2
//   //    5e4:	7a87a703          	lw	a4,1960(a5) # 27a8 <OSTCBHighRdy>
//   //    5e8:	000027b7          	lui	a5,0x2
//   //    5ec:	7ae7a223          	sw	a4,1956(a5) # 27a4 <OSTCBCur>
//   //    5f0:	000027b7          	lui	a5,0x2
//   //    5f4:	7a47a783          	lw	a5,1956(a5) # 27a4 <OSTCBCur>
//   //    5f8:	0007a783          	lw	a5,0(a5)
//   //    5fc:	00078113          	mv	sp,a5

// }


void OS_Sched()
{

	INT8U y;
	OS_ENTER_CRITICAL();

	y = OSUnMapTbl[OSRdyGrp];
	OSPrioHighRdy = (INT8U) ((y << 3) + OSUnMapTbl[OSRdyTbl[y]]);

	if(OSPrioHighRdy != OSPrioCur){
		OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
		OSPrioCur = OSPrioHighRdy;
		OSTSKSW();
	}


	OS_EXIT_CRITICAL();

	// register int ra asm("x1");
	// OSTCBCur->returnAddress = (void *)ra;
	// INT8U y;
	// OS_ENTER_CRITICAL();
	// y = OSUnMapTbl[OSRdyGrp];
	// OSPrioHighRdy = (INT8U) ((y << 3) + OSUnMapTbl[OSRdyTbl[y]]);
	// //printf("Highest Priority: %d\n", OSPrioHighRdy);
	// //printf("scheduling\n");
	// if (1)
	// {
	// 	// Do all the pushes for the current task
	// 	register int rsp asm("x2");

	// 	// INT32U *stk;
	// 	// stk = (INT32U *) rsp;
	// 	// stk--;
	// 	// *stk = (INT32U) OSTCBCur->returnAddress;

	// 	// asm volatile(
	// 	// 	"addi sp, sp, -52;\n\t"
	// 	// 	"sw x8, 44(sp);\n\t"
	// 	// 	"sw x9, 40(sp);\n\t"
	// 	// 	"sw x18, 36(sp);\n\t"
	// 	// 	"sw x19, 32(sp);\n\t"
	// 	// 	"sw x20, 28(sp);\n\t"
	// 	// 	"sw x21, 24(sp);\n\t"
	// 	// 	"sw x22, 20(sp);\n\t"
	// 	// 	"sw x23, 16(sp);\n\t"
	// 	// 	"sw x24, 12(sp);\n\t"
	// 	// 	"sw x25, 8(sp);\n\t"
	// 	// 	"sw x26, 4(sp);\n\t"
	// 	// 	"sw x27, 0(sp);\n\t"
	// 	// );

	// 	// // save new stack pointer
	// 	// OSTCBCur->OSTCBStkPtr = (OS_STK*)rsp;


	// 	// Switch to new highest priority task
	// 	OSPrioCur = OSPrioHighRdy;
	// 	OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
	// 	OSTCBCur = OSTCBHighRdy;


	// 	// load new stack pointer
	// 	rsp = (int)OSTCBCur->OSTCBStkPtr;


	// 	// pop all register values and restore PC and jump to it
	// 	asm volatile(
	// 		"lw x28, 48(sp);\n\t"
	// 		"lw x8, 44(sp);\n\t"
	// 		"lw x9, 40(sp);\n\t"
	// 		"lw x18, 36(sp);\n\t"
	// 		"lw x19, 32(sp);\n\t"
	// 		"lw x20, 28(sp);\n\t"
	// 		"lw x21, 24(sp);\n\t"
	// 		"lw x22, 20(sp);\n\t"
	// 		"lw x23, 16(sp);\n\t"
	// 		"lw x24, 12(sp);\n\t"
	// 		"lw x25, 8(sp);\n\t"
	// 		"lw x26, 4(sp);\n\t"
	// 		"lw x27, 0(sp);\n\t"
	// 		"addi sp, sp, 52;\n\t"
	// 	);


	// 	register int x28 asm("x28");
	// 	x28 = (int)OSTCBCur->returnAddress;
	// 	asm volatile(
	// 		 "jalr x0, x28, 0 ;\n\t"
	// 	);









	// 	//printf("stk pointer before pushes: %x\n", rsp);

	// 	// asm volatile(
	// 	// "addi sp, sp, -52"
	// 	// "sw x8, sp"
	// 	// "pushq %%rbx;\n\t"
	// 	// "pushq %%rbp;\n\t"
	// 	// "pushq %%r12;\n\t"
	// 	// "pushq %%r13;\n\t"
	//   // "pushq %%r14;\n\t"
	// 	// "pushq %%r15;\n\t"

	// 	// "movq %%rsp, %0;\n\t":
	// 	// "=m" (OSTCBCur->OSTCBStkPtr)
	// 	// 	);
	// 	//printf("stk pointer after pushes: %x\n", rsp);

	// 	// Save the new stack pointer

	// 	// OSPrioCur = OSPrioHighRdy;
	// 	// OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
	// 	// OSTCBCur = OSTCBHighRdy;


	// 	// Restore stack pointer
	// // asm volatile(

	// /* 	"movq %0, %%rsp;\n\t"

	// // 	"popq %%r15;\n\t"
	// // 	"popq %%r14;\n\t"
	// // 	"popq %%r13;\n\t"
	// // 	"popq %%r12;\n\t"
	// // 	"popq %%rbp;\n\t"
	// // 	"popq %%rbx;\n\t":
	// // 	"=m" (OSTCBCur->OSTCBStkPtr));


	// 	// Do all the pops then jump

	// 	// asm volatile(
	// 	// "mov %0, %%rbp;\n\t"
	// 	// "jmp %%rbp;\n\t"
	// 	//  :"=m" (OSTCBHighRdy->returnAddress));


	// 	//OSTCBCur->OSTCBStkPtr =
	// 	//OS_TASK_SW();
	// 	*/
	// }
	// OS_EXIT_CRITICAL();
}


void OS_Init()
{
	OS_EventWaitListInit();
	OS_TaskFreePool();
	OS_QFreePool();
}



void OS_TaskFreePool()
{
  OSTCBFreeList = freeTCBs;
  OS_TCB* temp = OSTCBFreeList;

  for(int i = 1; i < OS_MAX_TASKS; i++){
    temp->OSTCBNext = &freeTCBs[i];
    temp = static_cast<OS_TCB*> (temp->OSTCBNext);
  }

	temp->OSTCBNext = (OS_TCB*)0;


}

void OS_QFreePool()
{
	OSQFreeList = FreeOSQ;
	OS_Q* curr = OSQFreeList;
	for (INT8U i = 1; i < OS_MAX_EVENTS; ++i)
	{
		curr->OSQPtr = &FreeOSQ[i];
		curr = static_cast<OS_Q*> (curr->OSQPtr);
	}
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
INT16U OSSemAccept(EventControlBlock* pevent)
{
	INT16U cnt = pevent->OSEventCnt;
	if (cnt > 0)
	{
			pevent->OSEventCnt--;
	}
	else
	{
		OS_EventTaskWait(pevent);
	}
	return (cnt);
}
void OSSemPend(EventControlBlock* pevent, INT8U* err)
{


	register int ra asm("x1");
	OSTCBCur->returnAddress = (void *)ra;

	// register int rsp asm("sp");
	// INT32U *stk;
	// stk = (INT32U *) rsp;
	// stk--;
	// *stk = (INT32U) OSTCBCur->returnAddress;

	// 	asm volatile(
	// 		"addi sp, sp, -52;\n\t"
	// 		"sw x8, 44(sp);\n\t"
	// 		"sw x9, 40(sp);\n\t"
	// 		"sw x18, 36(sp);\n\t"
	// 		"sw x19, 32(sp);\n\t"
	// 		"sw x20, 28(sp);\n\t"
	// 		"sw x21, 24(sp);\n\t"
	// 		"sw x22, 20(sp);\n\t"
	// 		"sw x23, 16(sp);\n\t"
	// 		"sw x24, 12(sp);\n\t"
	// 		"sw x25, 8(sp);\n\t"
	// 		"sw x26, 4(sp);\n\t"
	// 		"sw x27, 0(sp);\n\t"
	// 	);

		// save new stack pointer
		// OSTCBCur->OSTCBStkPtr = (OS_STK*)rsp;



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

EventControlBlock* OSMboxCreate(void* msg)
{
	EventControlBlock* pevent;
	pevent = OSEventFreeList;
	if (OSEventFreeList != (EventControlBlock*) 0)
		OSEventFreeList = (EventControlBlock*) OSEventFreeList->OSEventPtr;
	if (pevent != (EventControlBlock*) 0)
	{
		pevent->OSEventType = OS_EVENT_TYPE_MBOX;
		pevent->OSEventCnt = 0;
		pevent->OSEventPtr = msg;
		pevent->OSEventGrp = 0x00;
	}
	return (pevent);
}

void* OSMboxPend (EventControlBlock* pevent, INT8U* err)
{
	void* msg;

	if (pevent == (EventControlBlock*) 0)
	{
		*err = OS_ERR_PEVENT_NULL;
		return ((void*)0);
	}
	if (pevent->OSEventType != OS_EVENT_TYPE_MBOX)
	{
		*err = OS_ERR_EVENT_TYPE;
		return ((void*)0);
	}
	msg = pevent->OSEventPtr;
	if (msg != (void*)0)
	{
		pevent->OSEventPtr = (void*) 0;
		*err = OS_NO_ERR;
		return (msg);
	}
	OSTCBCur->OSTCBStat |= OS_STAT_MBOX;
	OS_EventTaskWait(pevent);

	// register int x10 asm("x10");
	// register int x17 asm("x17");
	// x17 = 7;
	// x10 = (int)(&(OSTCBCur->OSTCBStkPtr));
	// asm volatile(
	// 	"ECALL\n\t"
	// ) ;

	OS_Sched();
	msg = OSTCBCur->OSTCBMsg;
	OSTCBCur->OSTCBMsg = (void*)0;
	OSTCBCur->OSTCBStat = OS_STAT_RDY;
	OSTCBCur->OSTCBEventPtr = (EventControlBlock*)0;
	*err = OS_NO_ERR;
	return (msg);
}

INT8U OSMboxPost(EventControlBlock* pevent, void* msg)
{
	if(pevent == (EventControlBlock*)0)
	{
		return(OS_ERR_PEVENT_NULL);
	}
	if (msg==(void*)0){
		return (OS_ERR_POST_NULL_PTR);
	}
	if(pevent->OSEventType != OS_EVENT_TYPE_MBOX)
	{
		return(OS_ERR_EVENT_TYPE);
	}
	if(pevent->OSEventGrp != 0x00)
	{
		EventTaskRdy(pevent,msg,OS_STAT_MBOX);


		// register int x10 asm("x10");
		// register int x17 asm("x17");
		// x17 = 7;
		// x10 = (int)(&(OSTCBCur->OSTCBStkPtr));
		// asm volatile(
		// 	"ECALL\n\t"
		// ) ;


		OS_Sched();
		return(OS_NO_ERR);
	}
	if(pevent->OSEventPtr != (void*)0)
	{
		return(OS_MBOX_FULL);
	}
	pevent->OSEventPtr =msg;
	return(OS_NO_ERR);
}

void* getMessage(EventControlBlock* pevent)
{
	return OSTCBCur->OSTCBMsg;
}

void OSStartHighRdy()
{
	OSRunning = TRUE;
	// printf("Initiating the Operating System!\n");

	register int sp asm("x2");
	sp = (int) OSTCBCur->OSTCBStkPtr;

	// asm volatile(
	// 	"addi	x2,x2, 48;\n\t"
	// 	"lw x28, 0(x2);\n\t"
	// 	"addi	x2,x2, 4;\n\t"
	// 	"jalr x0, x28, 0 ;\n\t"
	// 	);
		
		asm volatile(
		"addi	x2,x2, 48;\n\t" // simulate loading registers 
		"addi x17, x0, 13;\n\t" // issue an IRET instruction to load the new PC
		"ecall;\n\t"
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

		OSPrioHighRdy = (INT8U)((y << 3) + x);

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
	/*register int x10 asm("x10");
	register int x17 asm("x17");
	x17 = 7;
	x10 = (int)(&(OSTCBCur->OSTCBStkPtr));
	asm volatile(
		"ECALL\n\t"
	);*/
  OS_Sched();

  return (OS_NO_ERR);
}
EventControlBlock* OSQCreate(void** start, INT16U size)
{
	EventControlBlock* pevent;
	OS_Q *pq;
	pevent = OSEventFreeList;
	if (OSEventFreeList != (EventControlBlock*)0)
		OSEventFreeList = (EventControlBlock*) OSEventFreeList->OSEventPtr;
	if (pevent != (EventControlBlock*)0)
	{
		pq = OSQFreeList;
		if (pq != (OS_Q*) 0)
		{
			
			OSQFreeList = OSQFreeList->OSQPtr;
			pq->OSQStart = start;
			pq->OSQEnd = &start[size];
			pq->OSQIn = start;
			pq->OSQOut = start;
			pq->OSQSize = size;
			pq->OSQEntries = 0;
			pevent->OSEventType = OS_EVENT_TYPE_Q;
			pevent->OSEventCnt = 0;
			pevent->OSEventPtr = pq;
			pevent->OSEventGrp = 0x00;
		} else {
			pevent->OSEventPtr = (void *)OSEventFreeList;
			OSEventFreeList = pevent;
			pevent = (EventControlBlock *)0;
		}
	}
	return (pevent);
}

void* OSQPend(EventControlBlock* pevent, INT8U* err)
{
	void* msg;
	OS_Q* pq;
	if (pevent == (EventControlBlock*)0)
	{
		*err = OS_ERR_PEVENT_NULL;
		return ((void*)0);
	}
	if (pevent->OSEventType != OS_EVENT_TYPE_Q)
	{
		*err = OS_ERR_EVENT_TYPE;
		return ((void*)0);
	}
	pq = (OS_Q*) pevent->OSEventPtr;
	if (pq->OSQEntries > 0)
	{
		msg = *pq->OSQOut++;
		pq->OSQEntries--;
		if (pq->OSQOut == pq->OSQEnd)
		{
			pq->OSQOut = pq->OSQStart;
		}
		*err = OS_NO_ERR;
		return (msg);
	}
	OSTCBCur->OSTCBStat |= OS_STAT_Q;
	OS_EventTaskWait(pevent);
	OS_Sched();
	msg = OSTCBCur->OSTCBMsg;
	if (msg != (void *)0) 
	{
		OSTCBCur->OSTCBMsg = (void *)0;
		OSTCBCur->OSTCBStat = OS_STAT_RDY;
		OSTCBCur->OSTCBEventPtr = (EventControlBlock *)0;
		*err = OS_NO_ERR;
		return (msg);
	}
	return ((void *)0);
}

INT8U OSQPost (EventControlBlock* pevent, void* msg)
{
	OS_Q* pq;
	
	if (pevent == (EventControlBlock*)0)
	{
		return (OS_ERR_PEVENT_NULL);
	}
	if (msg == (void *)0) 
	{
		return (OS_ERR_POST_NULL_PTR);
	}
	if (pevent->OSEventType != OS_EVENT_TYPE_Q) 
	{
		return (OS_ERR_EVENT_TYPE);
	}
	if (pevent->OSEventGrp != 0x00) 
	{
		EventTaskRdy(pevent, msg, OS_STAT_Q);
		OS_Sched();
		return (OS_NO_ERR);
	}
	pq = (OS_Q*) pevent->OSEventPtr;
	if (pq->OSQEntries >= pq->OSQSize) 
	{
		return (OS_Q_FULL);
	}
	*pq->OSQIn++ = msg;
	pq->OSQEntries++;
	if (pq->OSQIn == pq->OSQEnd)
	{
		pq->OSQIn = pq->OSQStart;
	}
	return (OS_NO_ERR);
}

EventControlBlock* OSMutexCreate(INT8U prio, INT8U *err)
{
	 /* Within valid range */
	if (prio >= OS_LOWEST_PRIO)
	{
		*err = OS_PRIO_INVALID;
		return ((EventControlBlock*)0);
	}
	EventControlBlock* pevent;
	/* if an entry is available with this prio then reserve it */
	if (OSTCBPrioTbl[prio] != (OS_TCB*)0)
	{
		*err = OS_PRIO_EXIST;
		return ((EventControlBlock*)0);
	}
	OSTCBPrioTbl[prio] = (OS_TCB*) 1;

	/* obtain event and initialize it */
	pevent = OSEventFreeList;
	if (pevent == (EventControlBlock*)0)
	{
		OSTCBPrioTbl[prio] = (OS_TCB*)0;
		*err = OS_ERR_PEVENT_NULL;
		return (pevent);
	}
	OSEventFreeList = (EventControlBlock*) OSEventFreeList->OSEventPtr;
	pevent->OSEventType = OS_EVENT_TYPE_MUTEX;
	/* 
		upper 8 bits for priority and lower for value of mutex when the
		resource is available or the priority of the task owning the mutex
		which saved RAM
	 */
	pevent->OSEventCnt = (prio << 8) | OS_MUTEX_AVAILABLE;
	pevent->OSEventPtr =  (void*)0;
	pevent->OSEventGrp = 0;
	*err = OS_NO_ERR;
	return (pevent);
}

void OSMutexPend (EventControlBlock* pevent, INT8U* err)
{
	INT8U myPrio;
	/* priority inheritance priority */
	INT8U pip;
	BOOLEAN rdy;
	OS_TCB* ptcb;
	/* check if invalid event */
	if (pevent == (EventControlBlock*)0)
	{
		*err = OS_ERR_PEVENT_NULL;
		return;
	}
	/* check on type */
	if (pevent->OSEventType != OS_EVENT_TYPE_MUTEX)
	{
		*err = OS_ERR_EVENT_TYPE;
		return;
	}
	/* grant access if the lower 8 bits are 0xff */
	if ((INT8U)(pevent->OSEventCnt & 0x00ff) == OS_MUTEX_AVAILABLE)
	{
		pevent->OSEventCnt &= 0xff00;
		pevent->OSEventCnt |= OSTCBCur->OSTCBPrio;
		pevent->OSEventPtr = (void*)OSTCBCur;
		*err = OS_NO_ERR;
		return;
	}
	/* upper 8 bits is the pip */
	pip = (INT8U)(pevent->OSEventCnt >> 8);
	myPrio = (INT8U) (pevent->OSEventCnt & 0x00ff);
	/* task that owns the mutex */
	ptcb = (OS_TCB*)(pevent->OSEventPtr);

	if (ptcb->OSTCBPrio != pip && myPrio > OSTCBCur->OSTCBPrio)
	{
		/* determine if the task that owns the mutex is ready to run */
		if ((OSRdyTbl[ptcb->OSTCBY] & ptcb->OSTCBBitX) != 0x00)
		{
			if ((OSRdyTbl[ptcb->OSTCBBitY] &= ~ptcb->OSTCBBitX) == 0x00)
			{
				/* no longer ready to run at the owner's priority */
				OSRdyGrp &= ~ptcb->OSTCBBitY;
			}
			rdy = TRUE;
		} else
		{
			rdy = FALSE;
		}
		/* recompute elements with new priority */
		ptcb->OSTCBPrio = pip;
		ptcb->OSTCBY = ptcb->OSTCBPrio >> 3;
		ptcb->OSTCBBitY = OSMapTbl[ptcb->OSTCBY];
		ptcb->OSTCBX = ptcb->OSTCBPrio & 0x07;
		ptcb->OSTCBBitX = OSMapTbl[ptcb->OSTCBX];
		if (rdy == TRUE)
		{
			OSRdyGrp  						 |= ptcb ->OSTCBBitY;
			OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
		}
		OSTCBPrioTbl[pip] = (OS_TCB*) ptcb;
	}
	OSTCBCur->OSTCBStat |=  OS_STAT_MUTEX;
	OS_EventTaskWait(pevent);
	OS_Sched();
	OSTCBCur->OSTCBEventPtr = (EventControlBlock*)0;
	*err = OS_NO_ERR;
}
INT8U OSMutexPost(EventControlBlock* pevent)
{
	INT8U pip;
	INT8U prio;
	if (pevent == (EventControlBlock*)0)
	{
		return (OS_ERR_PEVENT_NULL);
	}
	pip = (INT8U) (pevent->OSEventCnt >> 8);
	prio = (INT8U)(pevent->OSEventCnt & 0x00ff);
	if (pevent->OSEventType != OS_EVENT_TYPE_MUTEX)
	{
		return (OS_ERR_EVENT_TYPE);
	}
	if (OSTCBCur->OSTCBPrio != pip || OSTCBCur->OSTCBPrio != prio)
	{
		return (OS_ERR_NOT_MUTEX_OWNER);
	}
	if (OSTCBCur->OSTCBPrio == pip)
	{
		if ((OSRdyTbl[OSTCBCur->OSTCBY] &= ~OSTCBCur->OSTCBBitX) == 0)
		{
			OSRdyGrp &= ~OSTCBCur->OSTCBBitY;
		}
		OSTCBCur->OSTCBPrio = prio;
		OSTCBCur->OSTCBY = prio >> 3;
		OSTCBCur->OSTCBBitY = OSMapTbl[OSTCBCur->OSTCBY];
		OSTCBCur->OSTCBX = prio & 0x07;
		OSTCBCur->OSTCBBitX = OSMapTbl[OSTCBCur->OSTCBX];
		OSRdyGrp |= OSTCBCur->OSTCBBitY;
		OSRdyTbl[OSTCBCur->OSTCBY] |= OSTCBCur->OSTCBBitX;
		OSTCBPrioTbl[prio] = (OS_TCB *)OSTCBCur;
	}
	OSTCBPrioTbl[pip] = (OS_TCB*)1;
	if (pevent->OSEventGrp != 0x00)
	{
		prio = EventTaskRdy(pevent, (void*)0, OS_STAT_MUTEX);
		pevent->OSEventCnt &= 0xff00;
		pevent->OSEventCnt |= prio;
		pevent->OSEventPtr = OSTCBPrioTbl[prio];
		OS_Sched();
		return (OS_NO_ERR);
	}
	pevent->OSEventCnt |= 0x00ff;
	pevent->OSEventPtr = (void*)0;
	return (OS_NO_ERR);
}