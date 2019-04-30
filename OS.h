#ifndef OS_H
#define OS_H
#include "OS_CONF.h"
struct TaskControlBlock;
struct EventControlBlock;
struct OS
{
	EventControlBlock * OSEventFreeList = NULL;
	TaskControlBlock * OSTaskFreeList = NULL;
	INT8 OSTaskCtr;
};

void OS_Init();
void OS_Start();
void OS_EventWaitListInit(EventControlBlock*);
void OS_TaskWaitListInit();
INT8 OSTaskCreate(void (*TaskControlBlock)(void *pd), void* , OS_STK*, INT8);

#endif