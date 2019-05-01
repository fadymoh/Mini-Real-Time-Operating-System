#include "OS_CONF.h"

void myTask(void* pdata)
{
	for(;;)
	{
		printf("hi\n");
	}
}
int main()
{
	for (int i = 0; i < 8; ++i)
		printf("%d \n", OSRdyTbl[i]);
	OS_Init();
	OSTaskCreate(myTask, 0, 0, 10);
	OSTaskCreate(myTask, 0, 0, 50);
	OSTaskCreate(myTask, 0, 0, 60);

	OS_Start();
	OS_Sched();
	for (int i = 0; i < 8; ++i)
		printf("%d \n", OSRdyTbl[i]);
	/*EventControlBlock* mySemaphore = OSCreateSemaphore();
	appendToWaitingList(mySemaphore, 10);
	appendToWaitingList(mySemaphore, 20);
	eraseFromWaitingList(mySemaphore);
	eraseFromWaitingList(mySemaphore);*/
	return 0;
}