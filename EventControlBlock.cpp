#include "OS_CONF.h"
struct EventControlBlock * OSEventFreeList = NULL;

void OSEventInit(EventControlBlock* pevent, INT8U type)
{
	pevent->OSEventType = type;
	pevent->OSEventGrp = 0;
	pevent->OSEventPtr = nullptr;
	for (INT8U i = 0; i < OS_EVENT_TBL_SIZE; ++i)
		pevent->OSEventTbl[i] = 0;
}

void appendToWaitingList(EventControlBlock* pevent, INT8U priority)
{
	printf("Appending task %d to waiting list\n", priority);
	pevent->OSEventGrp |= OSMapTbl[priority >> 3];
	pevent->OSEventTbl[priority >> 3] |= OSMapTbl[priority & 0x07];
	printf("Finished appending task %d to waiting list\n", priority);
}

void eraseFromWaitingList(EventControlBlock* pevent)
{
	INT8U highestPriority = getHighestPriority(pevent);
	printf("Erasing task %d to waiting list\n", highestPriority);
	if ((pevent->OSEventTbl[highestPriority >> 3] &= ~OSMapTbl[highestPriority & 0x07]) == 0)
		pevent->OSEventGrp &= ~OSMapTbl[highestPriority >> 3];
	printf("Finished Erasing task %d to waiting list\n", highestPriority);
}

INT8U EventTaskRdy(EventControlBlock* pevent, void* msg, INT8U msk)
{
	OS_TCB* ptcb;
	INT8U x;
	INT8U y;
	INT8U bitx;
	INT8U bity;
	INT8U prio;

	y = OSUnMapTbl[pevent->OSEventGrp];
	bity = OSMapTbl[y];
	x = OSUnMapTbl[pevent->OSEventTbl[y]];
	bitx = OSMapTbl[x];
	prio = (INT8)((y << 3) + x);
	if ((pevent->OSEventTbl[y] &= ~bitx) == 0x00)
		pevent->OSEventGrp &= ~bity;
	ptcb = OSTCBPrioTbl[prio]; // not declared yet
	ptcb->OSTCBEventPtr = (EventControlBlock *)0;
	ptcb->OSTCBMsg = static_cast<message*> (msg);
	/*
		The mask argument contains the apprioriate bit mask
		to clear the bit in OSTCBStat, which corresponds
		to the type of event signaled (OS_STAT_SEM, 
		OS_STAT_MUTEX, OS_STAT_MBOX, or OS_STATE_Q).
		If the OSTCBSTAT indicated that the task is now ready 
		to run, OS_EventTaskRdy() inserts this task in the
		OS ready list. Note that the task might not be ready
		to run because it could have been explicitly 
		suspended using the Suspending a Task and 
		Resuming a task functions.
	*/
	ptcb->OSTCBStat &= ~msk;
	if (ptcb->OSTCBStat == OS_STAT_RDY)
	{
		OSRdyGrp |= bity;
		OSRdyTbl[y] |= bitx;
	}
	return (prio);
}

void OS_EventTaskWait(EventControlBlock* pevent)
{
	OSTCBCur->OSTCBEventPtr = pevent;
	if ((OSRdyTbl[OSTCBCur->OSTCBY] &= ~OSTCBCur->OSTCBBitX) == 0x00)
		OSRdyGrp &= ~OSTCBCur->OSTCBBitY;
	pevent->OSEventTbl[OSTCBCur->OSTCBY] |= OSTCBCur->OSTCBBitX;
	pevent->OSEventGrp 					 |= OSTCBCur->OSTCBBitY;
}

INT8U getHighestPriority(EventControlBlock* pevent)
{
	printf("Getting highest priority task from waiting list\n");
	INT8U y = OSUnMapTbl[pevent->OSEventGrp];
	INT8U x = OSUnMapTbl[pevent->OSEventTbl[y]];
	INT8U prio = (y << 3) + x;
	printf("Finished getting task %d: This is the highest priority now\n", prio);
	return prio;
}
