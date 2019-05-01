#include "OS_CONF.h"

void OS_Init()
{
	OS_EventWaitListInit();
	OS_TaskFreePool(OSTCBFreeList);
}


void OS_TaskFreePool(OS_TCB* head){

  head = (OS_TCB*) malloc(sizeof(OS_TCB));
  OS_TCB* temp = head;

  for(int i = 1; i < OS_MAX_TASKS; i++){
    temp->OSTCBNext = (OS_TCB*) malloc(sizeof(OS_TCB));
    temp = temp->OSTCBNext;
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

