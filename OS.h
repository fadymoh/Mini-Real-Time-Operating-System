#ifndef OS_H
#define OS_H
#include "OS_CONF.h"


static struct EventControlBlock * OSEventFreeList = NULL;
void OS_Init();
void OS_Start();
void OS_EventWaitListInit();
struct EventControlBlock* OSCreateSemaphore();
void OS_TaskWaitListInit();

#endif