#include "OS_CONF.h"

void myTask(void* pdata)
{
	for(;;)
	{
		printf("hi\n");
	}
}
int get_counter1()

{
    __asm__ ("lea (%rip), %eax ") ;
}

int main()
{
	for (int i = 0; i < 8; ++i)
		printf("%d \n", OSRdyTbl[i]);
	OS_Init();

	OS_STK Task1Stk[512]; /* stack table for task 1 */
	__asm__ ("lea (%rip), %eax ");
	void (*myTask2) (void*) = myTask;
	asm volatile(
		"mov %0, %%rbp;\n\t"
		"jmp %%rbp;\n\t": "=m" (myTask2)
	);

	register int temp asm("%eax");
	printf("pc counter: %x\n", temp);

	OSTaskCreate(myTask, (void*)0, &Task1Stk[511], 10);
	OS_Start();
	__asm__ ("lea (%rip), %eax ");
	register int temp2 asm("%eax");
	printf("pc counter: %x\n", temp2);

	//for (int i = 0; i < 8; ++i)
		//printf("%d \n", OSRdyTbl[i]);
	/*EventControlBlock* mySemaphore = OSCreateSemaphore();
	appendToWaitingList(mySemaphore, 10);
	appendToWaitingList(mySemaphore, 20);
	eraseFromWaitingList(mySemaphore);
	eraseFromWaitingList(mySemaphore);*/
	return 0;
}
