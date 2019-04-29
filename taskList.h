#ifndef TASKLIST_H
#define TASKLIST_H
#include "OS_CONF.h"
class taskList
{
	public:
		taskList();
		void insert(task*);
		void erase(task*);
		task* run();
		~taskList();
	private:
		task * head;
};

#endif