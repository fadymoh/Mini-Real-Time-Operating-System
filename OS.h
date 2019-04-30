#ifndef OS_H
#define OS_H
#include "OS_CONF.h"


EventControlBlock * OSEventFreeList = NULL;
void OS_Init();
void OS_Start();
void OS_EventWaitListInit();
EventControlBlock* OSCreateSemaphore();
void OS_TaskWaitListInit();

#endif