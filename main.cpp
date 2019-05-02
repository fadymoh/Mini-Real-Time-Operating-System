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


void myTaskOther(void* pdata){
	printf("entered task2\n");
	for(j= 0;j < 20; j++);
	printf("hi Again %d\n", j);

	printf("exiting task2\n");
	
	OSTaskResume(10);
	OS_Sched();
}


void myTask(void* pdata)
{
	printf("Entered first task\n");
	for(i= 0;i < 20; i++)
		if(i == 10){
			OSTaskSuspend(10);
			OS_Sched();
			printf("Returned to task 1\n");
		}
	printf("exiting first task\n");
}

int main()
{
	OS_Init();


	OS_STK Task1Stk[512]; /* stack table for task 1 */
	OS_STK Task2Stk[512]; /* stack table for task 1 */

	OSTaskCreate(myTask, (void*)0, &Task1Stk[511], 10);
	OSTaskCreate(myTaskOther, (void*)0, &Task2Stk[511], 20);
	OS_Start();

	return 0;
}
