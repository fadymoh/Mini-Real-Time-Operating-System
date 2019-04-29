#ifndef TASK_H
#define TASK_H
enum taskStatus {READY, RUNNING, WAITING};
#include "OS_CONF.h"
class TaskControlBlock
{
	public:
		/*
			QueryTask(): Returns a copy of the desired task’s control block
		*/
		TaskControlBlock();
		/*const char* getName() const;
		__int8 getPriority() const;
		const taskStatus getStatus() const;
		void suspendTask(taskStatus);
		void resumeTask(taskStatus);
		void changePriority(__int8);
		void runTask();*/
		EventControlBlock* OSTCBEventPtr;
		message* OSTCBMsg;
		__int8 OSTCBStat; //msh 3arf beye3ml eh
		~TaskControlBlock();
	private:
		char *name;
		__int8 priority; // 8 bit integer
		void* task_ptr;
		enum taskStatus status;
		//OS_STK* OSTCBStkPtr;
		__int32 OSTCBStkSize;
		//__int16 OSTCBOpt;
		__int16 OSTCBId;
		TaskControlBlock* OSTCBNext;
		TaskControlBlock* OSTCBPrev;
		//__int16 OSTCBDly;
		
		__int8 OSTCBPrio;
		__int8 OSTCBX;
		__int8 OSTCBY;
		__int8 OSTCBBitX;
		__int8 OSTCBBitY;
};

#endif