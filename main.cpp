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
	asm volatile(
		"mov %0, %%rbp;\n\t"
		"jmp %%rbp;\n\t": "=m" (returnAddress)
	);
}
void sched(){

	// static register int esp asm("%esp");
	// printf("stack pointer 2: %x\n", esp);



	printf("entered scheduler\n");
	returnAddress = __builtin_return_address(0);
	
	// esp2 += 16;

	printf("stack pointer 2: %x\n", esp2);

	// asm volatile(
	// 	"popq;\n\t"
	// );


	 myTask22 = myTaskOther;

	printf("exited scheduler\n");
	asm volatile(
		"mov %0, %%rbp;\n\t"
		"jmp %%rbp;\n\t": "=m" (myTask22)
	);


	
	
}

void myTask(void* pdata)
{


	returnAddress2 = __builtin_return_address(0);
	printf("Entered first task\n");
	for(i= 0;i < 20; i++)
		if(i == 10){
			printf("stack pointer 1: %x\n", esp2);

			sched();
				
		}
			

	//printf("hi %d\n",i);

	printf("exiting first task\n");
	// asm volatile(
	// 	"retq;\n\t"
	// );

	asm volatile(
		"popq %%rax; \n\t"
		"mov %0, %%rbp;\n\t"
		"jmp %%rbp;\n\t": "=m" (returnAddress2)
	);
}


int main()
{

	returnAddress3 = __builtin_return_address(0);
	// for (int i = 0; i < 8; ++i)
	// 	printf("%d \n", OSRdyTbl[i]);
	// OS_Init();

	// OS_STK Task1Stk[512]; /* stack table for task 1 */


	void (*myTask2) (void*) = myTask;
	__asm__ ("lea (%rip), %eax ");


	printf("stack pointer BEFORE: %x\n", esp2);
	asm volatile(
		"mov %0, %%rbp;\n\t"
		"callq %%rbp;\n\t": "=m" (myTask2)
	);
	printf("stack pointer AFTER: %x\n", esp2);


	// register int temp asm("%eax");
	// printf("pc counter: %x\n", temp);

	// OSTaskCreate(myTask, (void*)0, &Task1Stk[511], 10);
	// OS_Start();
	// __asm__ ("lea (%rip), %eax ");
	// register int temp2 asm("%eax");

	// printf("pc counter: %x\n", temp2);



	asm volatile(
		"mov %0, %%rbp;\n\t"
		"jmp %%rbp;\n\t": "=m" (returnAddress3)
	);


	//for (int i = 0; i < 8; ++i)
		//printf("%d \n", OSRdyTbl[i]);
	/*EventControlBlock* mySemaphore = OSCreateSemaphore();
	appendToWaitingList(mySemaphore, 10);
	appendToWaitingList(mySemaphore, 20);
	eraseFromWaitingList(mySemaphore);
	eraseFromWaitingList(mySemaphore);*/

	return 0;
}
