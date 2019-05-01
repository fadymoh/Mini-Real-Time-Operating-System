#include "OS_CONF.h"


void OS_ENTER_CRITICAL() {}
void OS_EXIT_CRITICAL() {}
OS_STK* OSTaskStkInit(void (*task)(void *pd),void* pdata ,OS_STK* ptos, INT16U opt)
{
	INT16U *stk;
	
	stk = (INT16U *)ptos;
	printf("stk pointer: %d\n", stk);
	*stk-- = (INT16U)0x0202;
	*stk-- = (INT16U)0xAAAA;
	*stk-- = (INT16U)0xCCCC;
	*stk-- = (INT16U)0xDDDD;
	*stk-- = (INT16U)0xBBBB;
	*stk-- = (INT16U)0x0000;
	*stk-- = (INT16U)0x1111;
	*stk-- = (INT16U)0x2222;
	*stk-- = (INT16U)0x3333;
	*stk-- = (INT16U)0x4444;
	//register int _DS asm("eds");
	//*stk = _DS;
	return ((OS_STK *)stk);
}
void OSTaskCreateHook() {}
void OS_TASK_SW(){
	asm volatile
	(
		"pushq %%rbx;\n\t"
		"pushq %%rbp;\n\t"
		"pushq %%r12;\n\t"
		"pushq %%r13;\n\t"
		"pushq %%r14;\n\t"
		"pushq %%r15;\n\t"

		"movq %%rsp, %0;\n\t"

		"movq %1, %%rsp;\n\t"

		"popq %%r15;\n\t"
		"popq %%r14;\n\t"
		"popq %%r13;\n\t"
		"popq %%r12;\n\t"
		"popq %%rbp;\n\t"
		"popq %%rbx;\n\t"
		: "=m" (OSTCBCur->OSTCBStkPtr),
		  "=m" (OSTCBHighRdy->OSTCBStkPtr)
	);
}
void OS_Sched() 
{
	INT8U y;
	OS_ENTER_CRITICAL();
	y = OSUnMapTbl[OSRdyGrp];
	OSPrioHighRdy = (INT8U) ((y << 3) + OSUnMapTbl[OSRdyTbl[y]]);
	printf("scheduling\n");
	if (OSPrioHighRdy != OSPrioCur)
	{
		OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
		OS_TASK_SW();
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
	OS_EventWaitListInit();
	printf("tcbhead before: %d\n",OSTCBFreeList);
	OS_TaskFreePool();
	printf("tcbhead after: %d\n",OSTCBFreeList);
}


void OS_TaskFreePool(){

  OSTCBFreeList = (OS_TCB*) malloc(sizeof(OS_TCB));
  OS_TCB* temp = OSTCBFreeList;

  for(int i = 0; i < OS_MAX_TASKS; i++){
    temp->OSTCBNext = (OS_TCB*) malloc(sizeof(OS_TCB));
    temp = static_cast<OS_TCB*> (temp->OSTCBNext);
  }

}


void OS_EventWaitListInit()
{
	OSEventFreeList = (EventControlBlock*)malloc(sizeof (EventControlBlock));
	EventControlBlock* curr = OSEventFreeList;
	for (INT8 i = 0; i < OS_MAX_EVENTS; ++i)
	{
		curr->OSEventPtr = (EventControlBlock*)malloc(sizeof (EventControlBlock));
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
	}
}
EventControlBlock* OSCreateSemaphore()
{
	EventControlBlock* pevent = OSEventFreeList;
	if (OSEventFreeList != (EventControlBlock*) 0)
		OSEventFreeList = (EventControlBlock*) OSEventFreeList->OSEventPtr;
	if (pevent != (EventControlBlock*) 0)
	{
		pevent->OSEventType = OS_EVENT_TYPE_SEM;
		pevent->OSEventCnt = 1;
		pevent->OSEventPtr = (void*)0;
		pevent->OSEventGrp = 0x00;
	}
	return pevent;
}
void OSStartHighRdy()
{
	OSRunning = TRUE;
	asm volatile( "mov %%rsp, %0;\n\t": "=m" (OSTCBCur->OSTCBStkPtr));
}
void OS_Start(void)
{
	INT8U y;
	INT8U x;
	if (OSRunning == FALSE)
	{
		y = OSUnMapTbl[OSRdyGrp];
		x = OSUnMapTbl[OSRdyTbl[y]];
		printf("OSPrioHighRdy before: %d\n", OSPrioHighRdy);

		OSPrioHighRdy = (INT8U)((y << 3) + x);
		printf("OSPrioHighRdy after: %d\n", OSPrioHighRdy);

		OSPrioCur = OSPrioHighRdy;
		OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
		OSTCBCur = OSTCBHighRdy;
		OSStartHighRdy();
	}
}