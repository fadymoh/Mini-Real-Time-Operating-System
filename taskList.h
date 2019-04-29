#ifndef TASKLIST_H
#define TASKLIST_H
#include "OS_CONF.h"
class TaskControlBlock;
class taskList
{
	public:
		taskList();
		void insert(TaskControlBlock*);
		void erase(TaskControlBlock*);
		TaskControlBlock* run();
		~taskList();
	private:
		TaskControlBlock * head;
};

#endif