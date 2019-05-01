#ifndef OS_CONF_H
#define OS_CONF_H
typedef unsigned long OS_STK;
#include <stdint.h>

typedef unsigned char BOOLEAN;
typedef signed char INT8;
typedef unsigned char INT8U;
typedef unsigned short INT16U;
typedef unsigned int INT32U;
typedef signed short INT16;
typedef signed int INT32;


#define TRUE 1
#define FALSE 0

const INT8U OS_LOWEST_PRIO = 63;
const INT8U OS_EVENT_TBL_SIZE = 30;
const INT8U OS_MAX_EVENTS = 20;
const INT8U OS_MAX_QS = 10;
const INT8U OS_MAX_TASKS = 64;

const INT8U OSMapTbl[8] = { 1, 2, 4, 8, 16, 32, 64, 128 };

const INT8U OS_PRIO_SELF = 0;
const INT8U OS_IDLE_PRIO = 1;

const INT8U OS_STAT_RDY = 0;

const INT8U OS_NO_ERR =  0;
const INT8U OS_NO_MORE_TCB = 1; 
const INT8U OS_PRIO_INVALID =  2;

const INT8U OS_TASK_SUSPEND_IDLE = 2;
const INT8U OS_STAT_SUSPEND = 3;
const INT8U OS_TASK_SUSPEND_PRIO = 4;

const INT8U OS_PRIO_EXIST = 5;
const INT8U OS_TASK_RESUME_PRIO = 6;
const INT8U OS_TASK_NOT_SUSPENDED = 7;

const INT8U OS_EVENT_TYPE_SEM = 8;

const INT8U OSUnMapTbl[16 * 16] = {
	0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x00 to 0x0F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x10 to 0x1F */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x20 to 0x2F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x30 to 0x3F */
	6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x40 to 0x4F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x50 to 0x5F */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x60 to 0x6F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x70 to 0x7F */
	7, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x80 to 0x8F */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0x90 to 0x9F */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xA0 to 0xAF */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xB0 to 0xBF */
	6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xC0 to 0xCF */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xD0 to 0xDF */
	5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, /* 0xE0 to 0xEF */
	4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0  /* 0xF0 to 0xFF */
};


#include <stdio.h>
#include <stdlib.h>
// #include "message.h"
// #include "EventControlBlock.h"
// #include "TaskControlBlock.h"
// #include "OS.h"


struct EventControlBlock
{
	void* OSEventPtr; // Ptr to message or queue structure
	INT8U OSEventType; // Event Type
	INT8U OSEventGrp;	// Group for wait list
	INT16U OSEventCnt; // when event is a semaphore
	INT8U OSEventTbl[OS_EVENT_TBL_SIZE];
} ;
struct OS_TCB
{
		OS_STK* OSTCBStkPtr; // Pointer to the task's stack

		struct OS_TCB *OSTCBNext; // Pointer to next node
		struct OS_TCB *OSTCBPrev; // Pointer to prev node

		EventControlBlock* OSTCBEventPtr; // Pointer to the current event
		void *OSTCBMsg; // Pointer to currently received message

		INT16U OSTCBDly;
		INT8U OSTCBStat;
		INT8U OSTCBPrio;
		INT8U OSTCBX;
		INT8U OSTCBY;
		INT8U OSTCBBitX;
		INT8U OSTCBBitY;

};
struct message
{
	char* msg;
};
static struct EventControlBlock * OSEventFreeList = NULL;
static struct OS_TCB* OSTCBFreeList = NULL; 
static struct OS_TCB* OSTCBList = NULL;
static struct OS_TCB* OSTCBPrioTbl[OS_MAX_TASKS];
static struct OS_TCB* OSTCBCur = NULL;
static struct OS_TCB* OSTCBHighRdy = NULL;
static INT8U OSRdyGrp = 0x00;
static INT8U OSRdyTbl[8] = {0};
static INT8U OSPriorCur = 63;
static INT8U OSPrioHighRdy = 63;
static INT8U OSTaskCtr = 0;
static BOOLEAN OSRunning = FALSE;
static BOOLEAN OSStatRdy = FALSE;

enum taskStatus {READY, RUNNING, WAITING};

void OS_Init();
void OS_Start();
void OS_EventWaitListInit();
void OS_TaskFreePool(struct OS_TCB*);

struct EventControlBlock* OSCreateSemaphore();
void OS_TaskWaitListInit();

static void OS_ENTER_CRITICAL() {}
static void OS_EXIT_CRITICAL() {}
static OS_STK* OSTaskStkInit(void (*task)(void *pd),void* pdata ,OS_STK* ptos, INT16U opt) {return ptos;}
static void OSTaskCreateHook() {}
static void OS_Sched() {}



// extern struct OS_TCB* OSTCBPrioTbl[OS_MAX_TASKS];
// extern struct OS_TCB* OSTCBCur;
// extern struct OS_TCB* OSTCBFreeList; 

void TCB_INIT_FreeList(OS_TCB*, int n);
INT8U OS_TCBInit (INT8U prio, OS_STK *ptos, OS_STK *pbos, INT16U id, INT32U stk_size, void *pext, INT16U opt);
INT8U OSTaskCreate(void (*task)(void *pd), void *pdata, OS_STK *ptos, INT8U prio);
INT8U OSTaskSuspend (INT8U prio);
INT8U OSTaskResume (INT8U prio);
INT8U OSTaskQuery (INT8U prio, OS_TCB *pdata);


void OSEventInit(EventControlBlock*, INT8U);
void appendToWaitingList(EventControlBlock*,INT8U);
void eraseFromWaitingList(EventControlBlock*);
INT8U EventTaskRdy(EventControlBlock*, void*, INT8U);
INT8U getHighestPriority(EventControlBlock*);

#endif