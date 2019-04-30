#include "OS.h"

INT8 OSTaskCreate(void(*TaskControlBlock)(void *pd), void *pdata, OS_STK *ptos, INT8 prio)
{
	return 0;
}


void OS_EventWaitListInit(EventControlBlock* OSEventFreeList)
{
	OSEventFreeList = (EventControlBlock*)malloc(sizeof (EventControlBlock));
	OSEventInit(OSEvenFreeList);
	EventControlBlock* curr = OSEventFreeList;
	for (INT8 i = 0; i < OS_MAX_EVENTS; ++i)
	{
		curr->OSEventPtr = (EventControlBlock*)malloc(sizeof (EventControlBlock));
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
		OSEventInit(curr);
	}
}

void OS_TaskWaitListInit()
{
}
