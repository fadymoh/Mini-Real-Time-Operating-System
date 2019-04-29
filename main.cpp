#include "OS_CONF.h"
#include <iostream>
#include <random>

int main()
{
	OS* myRTOS = new OS();

	EventControlBlock* curr = myRTOS->OSEventFreeList;

	int counter = 1;
	while (curr->OSEventPtr != nullptr)
	{
		printf("Start initializing ECB #%d:\n", counter);
		curr->appendToWaitingList(10);
		curr->appendToWaitingList(20);
		curr->appendToWaitingList(40);
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
		printf("End initializing ECB #%d:\n", counter++);
	}
	curr = myRTOS->OSEventFreeList;
	counter = 1;
	while (curr->OSEventPtr != nullptr)
	{
		printf("Start Removing from ECB #%d:\n", counter);
		curr->eraseFromWaitingList();
		curr->eraseFromWaitingList();
		curr = static_cast<EventControlBlock*> (curr->OSEventPtr);
		printf("End Removing ECB #%d:\n", counter++);
	}
	/*EventControlBlock* myEvent = new EventControlBlock();
	myEvent->appendToWaitingList(10);
	myEvent->appendToWaitingList(20);
	myEvent->appendToWaitingList(40);
	myEvent->eraseFromWaitingList();
	myEvent->eraseFromWaitingList();*/
	system("pause");
	return 0;
}