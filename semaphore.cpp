#include "semaphore.h"

semaphore::semaphore(char *, int)
{
}

/*
	if the value of the semaphore is greater than 0, it decrements 
	the semaphore and returns to its caller. However if the value
	of the semaphore is 0, it places the calling task in the waiting
	list for the semaphore. The tasks awaits until a task signals
	the semaphore or a specified timeout expires
*/
bool semaphore::waitSemaphore()
{

	return false;
}
/*
	If the semaphore value is zero or more, it is incremented and returns
	to its caller. If tasks are waiting for the semaphore to be signaled,
	it removes the highest prioriry task pending for the semaphore
	from the waiting list and makes this task ready to run
*/
void semaphore::signalSemaphore()
{
}

semaphore::~semaphore()
{
}
