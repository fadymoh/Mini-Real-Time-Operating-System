#include "task.h"

task::task()
{
}

const char * task::getName() const
{
	return nullptr;
}

__int8 task::getPriority() const
{
	return 0;
}

const taskStatus task::getStatus() const
{
	return taskStatus();
}

void task::suspendTask(taskStatus)
{
}

void task::resumeTask(taskStatus)
{
}

void task::changePriority(__int8)
{
}

void task::runTask()
{
}

task::~task()
{
}
