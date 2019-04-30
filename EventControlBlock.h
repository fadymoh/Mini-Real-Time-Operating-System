#ifndef EVENTCONTROLBLOCK_H
#define EVENTCONTROLBLOCK_H
#include "OS_CONF.h"
#include <stdio.h>

struct EventControlBlock
{
	void* OSEventPtr; // Ptr to message or queue structure
	INT8 OSEventType; // Event Type
	INT8 OSEventGrp;	// Group for wait list
	INT16 OSEventCnt; // when event is a semaphore
	INT8 OSEventTbl[OS_EVENT_TBL_SIZE];
} ;
void OSEventInit(EventControlBlock*);
void appendToWaitingList(EventControlBlock*,INT8);
void eraseFromWaitingList(EventControlBlock*);
INT8 EventTaskRdy(EventControlBlock*, void*, INT8);
INT8 getHighestPriority(EventControlBlock*);

#endif