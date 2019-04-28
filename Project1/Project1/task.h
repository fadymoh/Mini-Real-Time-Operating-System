#ifndef TASK_H
#define TASK_H
enum taskStatus {READY, RUNNING, BLOCKED};
#include "common.h"
class task
{
	public:
		/*
			QueryTask(): Returns a copy of the desired task’s control block
		*/
		task();
		const char* getName() const;
		__int8 getPriority() const;
		const taskStatus getStatus() const;
		void suspendTask(taskStatus);
		void resumeTask(taskStatus);
		void changePriority(__int8);
		void runTask();
		~task();
	private:
		char *name;
		__int8 priority; // 8 bit integer
		void* task_ptr;
		enum taskStatus status;
};

#endif