#ifndef EVENTCONTROLBLOCK_H
#define EVENTCONTROLBLOCK_H
#include "OS_CONF.h"
#include <stdio.h>
class EventControlBlock
{
	public:
		EventControlBlock();
		void appendToWaitingList(__int8);
		void eraseFromWaitingList();
		__int8 EventTaskRdy(void*, __int8);
		void* OSEventPtr; // Ptr to message or queue structure
		~EventControlBlock();
	private:
		__int8 getHighestPriority() const;
		__int8 OSEventType; // Event Type
		__int8 OSEventGrp;	// Group for wait list
		//__int16 OSEventCnt; // when event is a semaphore
		
		/*
			Each bit in OSEventGrp is used to indicate
			when any task in a group is waiting for
			the event to occur. When a task is waiting,
			its corresponding bit is set in the wait table
			OSEventTbl. 
		*/
		__int8 OSEventTbl[OS_EVENT_TBL_SIZE];
};

#endif