#include "OS_CONF.h"

static void* returnAddress = 0x0;
static void* returnAddress2 = 0x0;

static void* returnAddress3 = 0x0;
static void (*myTask22) (void*);
// register int esp2 asm("%esp");
static EventControlBlock* mySemaphore;


const char* s1 = (const char *)"entered Task2\n";
const char* s2 = (const char *)"Finished Task2\n";
const char* s3 = (const char *)"Entered Task1\n";
const char* s4 = (const char *)"Pausing Task1\n";
const char* s5 = (const char *)"Resuming Task1\n";
const char* s6 = (const char *)"Finished Task1\n";
const char* s7 = (const char *)"Created Task\n";

// compile:

// riscv32-unknown-linux-gnu-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf


void printString(const char * str){
	register int x10 asm("x10");
	register int x17 asm("x17");
	x17 = 4;
	x10 = (int) str;
	 asm volatile(
        "ECALL\n\t"
    ) ;
}

void myTaskOther(void* pdata){
	//printf("entered task2\n");
	printString(s1);


	int fx = 0;
	for(int ll= 0;ll < 20; ll++)
		fx += ll;


	printString(s2);

	//printf("exiting task2\n");
	//printf("signaled the semaphore, it can be acquired now!\n");

	OSSemPost(mySemaphore);
}

INT8U* err;
void myTask(void* pdata)
{
	printString(s3);

	//printf("Entered first task\n");
	for(int i= 0;i < 20; i++)
		if(i == 10) 
		{
			printString(s4);

			OSSemPend(mySemaphore, err);
			printString(s5);

			// if (err == OS_NO_ERR)
			// 	printf("acquired with no error\n");
			// else
			// 	printf("got an error number: %d\n", err);			
		}

	printString(s6);

	register int x17 asm("x17");
    x17 = 10;
	asm volatile(
        "ECALL\n\t"
    ) ;
	// printf("exiting first task\n");
}

// Stack pointer for first task!
// RF[02]=013fffb4
// 0x013fffe8
// 
int main()
{
	OS_Init();

	OS_STK Task1Stk[256]; /* stack table for task 1 */
	OS_STK Task2Stk[256]; /* stack table for task 1 */

	printString((const char*)"About to create tasks:\n");
	OSTaskCreate(myTask, (void*)0, &Task1Stk[255], 10);
	OSTaskCreate(myTaskOther, (void*)0, &Task2Stk[255], 20);
	mySemaphore = OSCreateSemaphore();

	printString(s7);
	OS_Start();

	return 0;
}
