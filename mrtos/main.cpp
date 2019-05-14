#include "OS_CONF.h"

static void* returnAddress = 0x0;
static void* returnAddress2 = 0x0;

static void* returnAddress3 = 0x0;
static void (*myTask22) (void*);
// register int esp2 asm("%esp");
static EventControlBlock* mySemaphore;
static EventControlBlock* myMailBox;
static EventControlBlock* myQueue;
static EventControlBlock* myMutex;

const char* s1 = (const char *)"entered Task2\n";
const char* s2 = (const char *)"Finished Task2\n";
const char* s3 = (const char *)"Entered Task1\n";
const char* s4 = (const char *)"Pausing Task1\n";
const char* s5 = (const char *)"Resuming Task1\n";
const char* s6 = (const char *)"Finished Task1\n";
const char* s7 = (const char *)"Created Task\n";

void* CommMsg[10];
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

void printInteger(int x){
	register int x10 asm("x10");
	register int x17 asm("x17");
	x17 = 1;
	x10 = x;
	 asm volatile(
        "ECALL\n\t"
    ) ;
}
/*
void myTaskOther(void* pdata){

	printString(s1);

	OSQPost(myQueue, (void*) "We ");
	OSQPost(myQueue, (void*) "Have ");
	OSQPost(myQueue, (void*) "Finished ");
	OSQPost(myQueue, (void*) "The ");
	OSQPost(myQueue, (void*) "Project!\n");
	OSQPost(myQueue, (void*) "Hopefully manethaza2sh zy kol mara :)!\n");

	printString(s2);
}

INT8U* err;
void myTask(void* pdata)
{
	printString(s3);

	printString((const char*)"trying to acquire from queue\n");
	INT8U* err;
	void* msg = OSQPend(myQueue, err);

	printString((const char*)"got out of acquiring from queue\n");
	printString((const char*)"this is the acquired message: ");
	
	printString((const char*) msg);
	msg = OSQPend(myQueue, err);
	printString((const char*) msg);
	msg = OSQPend(myQueue, err);
	printString((const char*) msg);
	msg = OSQPend(myQueue, err);
	printString((const char*) msg);
	msg = OSQPend(myQueue, err);
	printString((const char*) msg);
	msg = OSQPend(myQueue, err);
	printString((const char*) msg);

	printString(s6);
	register int x17 asm ("x17");
    x17 = 10;
	asm volatile(
        "ECALL\n\t"
    ) ;
}
*/
// Stack pointer for first task!
// RF[02]=013fffb4
// 0x013fffe8
//

void TaskPrio10 (void* pdata)
{
	INT8U err;
	pdata = pdata;
	while(1)
	{
		printString((const char*) "In task 10: before\n");
		OSMutexPend(myMutex, &err);
		printString((const char*) "In task 10: mid\n");
		OSMutexPost(myMutex);
		printString((const char*) "In task 10: after\n");
	}
}
void TaskPrio15 (void* pdata)
{
	INT8U err;
	pdata = pdata;
	while(1)
	{
		printString((const char*) "In task 15: before\n");
		OSMutexPend(myMutex, &err);
		printString((const char*) "In task 15: mid\n");
		OSMutexPost(myMutex);
		printString((const char*) "In task 15: after\n");
	}
}
void TaskPrio20 (void* pdata)
{
	INT8U err;
	pdata = pdata;
	while(1)
	{
		printString((const char*) "In task 20: before\n");
		OSMutexPend(myMutex, &err);
		printString((const char*) "In task 20: mid\n");
		OSMutexPost(myMutex);
		printString((const char*) "In task 20: after\n");
	}
}
int main()
{
	OS_Init();

	OS_STK Task1Stk[256]; /* stack table for task 1 */
	OS_STK Task2Stk[256]; /* stack table for task 1 */

	printString((const char*)"About to create tasks:\n");
	//OSTaskCreate(myTask, (void*)0, &Task1Stk[255], 10);
	//OSTaskCreate(myTaskOther, (void*)0, &Task2Stk[255], 20);

	OS_STK TaskPrio10Stk[256];
	OS_STK TaskPrio15Stk[256];
	OS_STK TaskPrio20Stk[256];
	OSTaskCreate(TaskPrio10, (void*)0, &TaskPrio10Stk[255], 10);

	OSTaskCreate(TaskPrio15, (void*)0, &TaskPrio15Stk[255], 15);

	OSTaskCreate(TaskPrio20, (void*)0, &TaskPrio20Stk[255], 20);

	mySemaphore = OSCreateSemaphore();
	myMailBox = OSMboxCreate((void*)0);
	myQueue = OSQCreate(&CommMsg[0], 10);
	INT8U err;
	myMutex = OSMutexCreate(9, &err);
	
	printString(s7);
	OS_Start();
  register int x17 asm("x17");
  x17 = 10;
	asm volatile(
        "ECALL\n\t"
    ) ;
	return 0;
}
