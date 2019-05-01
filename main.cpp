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
	OS_STK Task1Stk[10]; /* stack table for task 1 */

	OSTaskCreate(myTask, (void*)0, &Task1Stk[9], 10);
	OS_Start();
	//for (int i = 0; i < 8; ++i)
		//printf("%d \n", OSRdyTbl[i]);
	/*EventControlBlock* mySemaphore = OSCreateSemaphore();
	appendToWaitingList(mySemaphore, 10);
	appendToWaitingList(mySemaphore, 20);
	eraseFromWaitingList(mySemaphore);
	eraseFromWaitingList(mySemaphore);*/
	return 0;
}