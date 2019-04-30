typedef unsigned char INT8;
typedef signed short INT16;
typedef signed int INT32;
const INT8 maxNameSize = 15;
const INT8 OS_EVENT_TBL_SIZE = 30;
const INT8 OS_MAX_EVENTS = 20;
const INT8 OS_MAX_QS = 10;
const INT8 OS_MAX_TASKS = 63;
const INT8 OSMapTbl[8] = { 1, 2, 4, 8, 16, 32, 64, 128 };
const INT8 OSUnMapTbl[16 * 16] = {
	0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x00 to 0x0F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x10 to 0x1F */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x20 to 0x2F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x30 to 0x3F */
	6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x40 to 0x4F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x50 to 0x5F */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x60 to 0x6F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x70 to 0x7F */
	7, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x80 to 0x8F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x90 to 0x9F */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xA0 to 0xAF */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xB0 to 0xBF */
	6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xC0 to 0xCF */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xD0 to 0xDF */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xE0 to 0xEF */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0  /* 0xF0 to 0xFF */
};

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

EventControlBlock * OSEventFreeList = nullptr;
void OS_Init();
void OS_Start();
void OS_EventWaitListInit();
EventControlBlock* OSCreateSemaphore();
void OS_TaskWaitListInit();
#include <stdio.h>
#include <stdlib.h>
int main()
{
	OS_Init();
	EventControlBlock* mySemaphore = OSCreateSemaphore();
	appendToWaitingList(mySemaphore, 10);
	appendToWaitingList(mySemaphore, 20);
	eraseFromWaitingList(mySemaphore);
	eraseFromWaitingList(mySemaphore);
	/*OS* myRTOS = new OS();
	
	EventControlBlock* curr = myRTOS->OSEventFreeList;

	int counter = 1;
	while (curr->OSEventPtr != nullptr)
	{
		printf("Start initializing ECB #%d:\n", counter);
		curr->appendToWaitingList(10);
		curr->appendToWaitingList(20);
		curr->appendToWaitingList(40);
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
		printf("End initializing ECB #%d:\n", counter++);
	}
	curr = myRTOS->OSEventFreeList;
	counter = 1;
	while (curr->OSEventPtr != nullptr)
	{
		printf("Start Removing from ECB #%d:\n", counter);
		curr->eraseFromWaitingList();
		curr->eraseFromWaitingList();
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
		printf("End Removing ECB #%d:\n", counter++);
	}*/
	/*EventControlBlock* myEvent = new EventControlBlock();
	myEvent->appendToWaitingList(10);
	myEvent->appendToWaitingList(20);
	myEvent->appendToWaitingList(40);
	myEvent->eraseFromWaitingList();
	myEvent->eraseFromWaitingList();*/
	//system("pause");
	return 0;
}
void OSEventInit(EventControlBlock* pevent)
{
	pevent->OSEventType = 'm';
	pevent->OSEventGrp = 0;
	pevent->OSEventPtr = nullptr;
	for (int i = 0; i < OS_EVENT_TBL_SIZE; ++i)
		pevent->OSEventTbl[i] = 0;
}

void appendToWaitingList(EventControlBlock* pevent, INT8 priority)
{
	printf("Appending task %d to waiting list\n", priority);
	pevent->OSEventGrp |= OSMapTbl[priority >> 3];
	pevent->OSEventTbl[priority >> 3] |= OSMapTbl[priority & 0x07];
	printf("Finished appending task %d to waiting list\n", priority);
}

INT8 getHighestPriority(EventControlBlock* pevent)
{
	printf("Getting highest priority task from waiting list\n");
	INT8 y = OSUnMapTbl[pevent->OSEventGrp];
	INT8 x = OSUnMapTbl[pevent->OSEventTbl[y]];
	INT8 prio = (y << 3) + x;
	printf("Finished getting task %d: This is the highest priority now\n", prio);
	return prio;
}

void eraseFromWaitingList(EventControlBlock* pevent)
{
	INT8 highestPriority = getHighestPriority(pevent);
	printf("Erasing task %d to waiting list\n", highestPriority);
	if ((pevent->OSEventTbl[highestPriority >> 3] &= ~OSMapTbl[highestPriority & 0x07]) == 0)
		pevent->OSEventGrp &= ~OSMapTbl[highestPriority >> 3];
	printf("Finished Erasing task %d to waiting list\n", highestPriority);
}
void OS_Init()
{
	OS_EventWaitListInit();
}
void OS_EventWaitListInit()
{
	OSEventFreeList = (EventControlBlock*)malloc(sizeof (EventControlBlock));
	OSEventInit(OSEventFreeList);
	EventControlBlock* curr = OSEventFreeList;
	for (INT8 i = 0; i < OS_MAX_EVENTS; ++i)
	{
		curr->OSEventPtr = (EventControlBlock*)malloc(sizeof (EventControlBlock));
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
		OSEventInit(curr);
	}
}
EventControlBlock* OSCreateSemaphore()
{
	EventControlBlock* pevent = OSEventFreeList;
	if (OSEventFreeList != (EventControlBlock*) 0)
		OSEventFreeList = (EventControlBlock*) OSEventFreeList->OSEventPtr;
	if (pevent != (EventControlBlock*) 0)
	{
		//pevent->OSEventType = OS_EVENT_TYPE_SEM;
		pevent->OSEventCnt = 1;
		pevent->OSEventPtr = (void*)0;
		pevent->OSEventGrp = 0x00;
	}
	return pevent;
}