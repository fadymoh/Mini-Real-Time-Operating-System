#ifndef TASK_H
#define TASK_H
enum taskStatus {READY, RUNNING, WAITING};
#include "OS_CONF.h";
struct EventControlBlock;
struct message;
struct TaskControlBlock
{
		EventControlBlock* OSTCBEventPtr;
		message* OSTCBMsg;
		INT8 OSTCBStat; //msh 3arf beye3ml eh
		char *name;
		INT8 priority; // 8 bit integer
		void* task_ptr;
		enum taskStatus status;
		OS_STK* OSTCBStkPtr;
		INT16 OSTCBStkSize;
		INT32 OSTCBId;
		TaskControlBlock* OSTCBNext;
		TaskControlBlock* OSTCBPrev;
		
		INT8 OSTCBPrio;
		INT8 OSTCBX;
		INT8 OSTCBY;
		INT8 OSTCBBitX;
		INT8 OSTCBBitY;
};

#endif