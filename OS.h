#ifndef OS_H
#define OS_H
#include "OS_CONF.h"
class OS
{
	public:
		OS();
		EventControlBlock * OSEventFreeList = nullptr;
		__int8 OSTaskCreate(void (*TaskControlBlock)(void *pd), void* , OS_STK*, __int8);
		~OS();
	private:
		TaskControlBlock * OSTaskFreeList = nullptr;
		void OS_EventWaitListInit();
		void OS_TaskWaitListInit();
		__int8 OSTaskCtr;
};


#endif