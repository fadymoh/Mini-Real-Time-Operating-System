#include "OS.h"

OS::OS()
{
	OSTaskCtr = 0;
	OS_EventWaitListInit();
}

__int8 OS::OSTaskCreate(void(*TaskControlBlock)(void *pd), void *pdata, OS_STK *ptos, __int8 prio)
{
	return 0;
}

OS::~OS()
{
}

void OS::OS_EventWaitListInit()
{
	OSEventFreeList = new EventControlBlock();
	EventControlBlock* curr = OSEventFreeList;
	for (__int8 i = 0; i < OS_MAX_EVENTS; ++i)
	{
		curr->OSEventPtr = new EventControlBlock();
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
	}
}

void OS::OS_TaskWaitListInit()
{
}
