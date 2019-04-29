#include "EventControlBlock.h"

EventControlBlock::EventControlBlock()
{
	OSEventType = 'm';
	OSEventGrp = 0;
	OSEventPtr = nullptr;
	for (int i = 0; i < OS_EVENT_TBL_SIZE; ++i)
		OSEventTbl[i] = 0;
}

void EventControlBlock::appendToWaitingList(__int8 priority)
{
	printf("Appending task %d to waiting list\n", priority);
	OSEventGrp |= OSMapTbl[priority >> 3];
	OSEventTbl[priority >> 3] |= OSMapTbl[priority & 0x07];
	printf("Finished appending task %d to waiting list\n", priority);
}

void EventControlBlock::eraseFromWaitingList()
{
	__int8 highestPriority = getHighestPriority();
	printf("Erasing task %d to waiting list\n", highestPriority);
	if ((OSEventTbl[highestPriority >> 3] &= ~OSMapTbl[highestPriority & 0x07]) == 0)
		OSEventGrp &= ~OSMapTbl[highestPriority >> 3];
	printf("Finished Erasing task %d to waiting list\n", highestPriority);
}

__int8 EventControlBlock::EventTaskRdy(void* msg, __int8 msk)
{
	TaskControlBlock* ptcb;
	__int8 x;
	__int8 y;
	__int8 bitx;
	__int8 bity;
	__int8 prio;

	y = OSUnMapTbl[OSEventGrp];
	bity = OSMapTbl[y];
	x = OSUnMapTbl[OSEventTbl[y]];
	bitx = OSMapTbl[x];
	prio = (__int8)((y << 3) + x);
	if ((OSEventTbl[y] &= ~bitx) == 0x00)
		OSEventGrp &= ~bity;
	/*ptcb = OSTCBPrioTbl[prio]; // not declared yet
	ptcb->OSTCBEventPtr = (EventControlBlock *)0;
	ptcb->OSTCBMsg = static_cast<message*> (msg);*/
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
	/*ptcb->OSTCBStat &= ~msk;
	if (ptcb->OSTCBStat == OS_STAT_RDY)
	{
		OSRdyGrp |= bity;
		OSRdyTbl[y] |= bitx;
	}*/
	return prio;
}

EventControlBlock::~EventControlBlock()
{

}

__int8 EventControlBlock::getHighestPriority() const
{
	printf("Getting highest priority task from waiting list\n");
	__int8 y = OSUnMapTbl[OSEventGrp];
	__int8 x = OSUnMapTbl[OSEventTbl[y]];
	__int8 prio = (y << 3) + x;
	printf("Finished getting task %d: This is the highest priority now\n", prio);
	return prio;
}
