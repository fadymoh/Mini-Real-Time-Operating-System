#include "OS_CONF.h"
int main()
{
	OS_Init();
	EventControlBlock* mySemaphore = OSCreateSemaphore();
	appendToWaitingList(mySemaphore, 10);
	appendToWaitingList(mySemaphore, 20);
	eraseFromWaitingList(mySemaphore);
	eraseFromWaitingList(mySemaphore);
	return 0;
}