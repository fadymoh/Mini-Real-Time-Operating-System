#include "OS_CONF.h"
#include <stdio.h>
#include <setjmp.h>


static void* returnAddress = 0x0;
static void* returnAddress2 = 0x0;

static void* returnAddress3 = 0x0;
static int i;
static void (*myTask22) (void*);
static int j;
register int esp2 asm("%esp");
static EventControlBlock* mySemaphore;

void myTaskOther(void* pdata){
	printf("entered task2\n");
	for(j= 0;j < 20; j++);
	printf("hi Again %d\n", j);

	printf("exiting task2\n");
	printf("signaled the semaphore, it can be acquired now!\n");

	OSSemPost(mySemaphore);
}

INT8U* err;
void myTask(void* pdata)
{
	printf("Entered first task\n");
	for(i= 0;i < 20; i++)
		if(i == 10) 
		{
			OSSemPend(mySemaphore, err);
			if (err == OS_NO_ERR)
				printf("acquired with no error\n");
			else
				printf("got an error number: %d\n", err);			
		}
	printf("exiting first task\n");
}

int main()
{
	OS_Init();

	OS_STK Task1Stk[512]; /* stack table for task 1 */
	OS_STK Task2Stk[512]; /* stack table for task 1 */

	OSTaskCreate(myTask, (void*)0, &Task1Stk[200], 10);
	OSTaskCreate(myTaskOther, (void*)0, &Task2Stk[200], 20);
	mySemaphore = OSCreateSemaphore();

	OS_Start();

	return 0;
}
