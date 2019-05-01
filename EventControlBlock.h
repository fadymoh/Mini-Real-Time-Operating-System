#ifndef EVENTCONTROLBLOCK_H
#define EVENTCONTROLBLOCK_H
#include "OS_CONF.h"
#include <stdio.h>

struct EventControlBlock
{
	void* OSEventPtr; // Ptr to message or queue structure
	INT8U OSEventType; // Event Type
	INT8U OSEventGrp;	// Group for wait list
	INT16U OSEventCnt; // when event is a semaphore
	INT8U OSEventTbl[OS_EVENT_TBL_SIZE];
} ;
void OSEventInit(EventControlBlock*);
void appendToWaitingList(EventControlBlock*,INT8U);
void eraseFromWaitingList(EventControlBlock*);
INT8U EventTaskRdy(EventControlBlock*, void*, INT8U);
INT8U getHighestPriority(EventControlBlock*);

#endif