#ifndef OS_CONF_H
#define OS_CONF_H
typedef unsigned long OS_STK;

typedef unsigned char BOOLEAN;
typedef signed char INT8;
typedef unsigned char INT8U;
typedef unsigned short INT16U;
typedef unsigned int INT32U;
typedef signed short INT16;
typedef signed int INT32;


#define TRUE 1
#define FALSE 0
#define FP_SEG(x) (INT16U)((INT32U)(x) >> 16) /* grab 16 most significant bits */ 
#define FP_OFF(x) (INT16U)((INT32U)(x)) /* grab 16 least significant bits */

#define OSTSKSW() asm volatile("addi x17, x0, 12;\n\tecall;\n\t");
#define IRET() asm volatile("addi x17, x0, 13;\n\tecall;\n\t");


const INT8U OS_LOWEST_PRIO = 63;
const INT8U OS_EVENT_TBL_SIZE = 30;
const INT8U OS_MAX_EVENTS = 20;
const INT8U OS_MAX_QS = 10;
const INT8U OS_MAX_TASKS = 64;

const INT8U OSMapTbl[8] = { 1, 2, 4, 8, 16, 32, 64, 128 };

const INT8U OS_PRIO_SELF = 0;
const INT8U OS_IDLE_PRIO = 1;

const INT8U OS_STAT_RDY = 0;
const INT8U OS_STAT_SEM = 10;
const INT8U OS_STAT_MBOX = 20;
const INT8U OS_STAT_Q = 30;
const INT8U OS_STAT_MUTEX = 40;

const INT8U OS_NO_ERR =  0;
const INT8U OS_NO_MORE_TCB = 1; 
const INT8U OS_PRIO_INVALID =  2;
const INT8U OS_ERR_PEVENT_NULL = 3;
const INT8U OS_ERR_EVENT_TYPE = 4;
const INT8U OS_SEM_OVERFLOW = 5;
const INT8U OS_ERR_POST_NULL_PTR=6;
const INT8U OS_MBOX_FULL=7;
const INT8U OS_Q_FULL = 8;
const INT8U OS_ERR_NOT_MUTEX_OWNER = 9;

const INT8U OS_TASK_SUSPEND_IDLE = 2;
const INT8U OS_STAT_SUSPEND = 3;
const INT8U OS_TASK_SUSPEND_PRIO = 4;

const INT8U OS_MUTEX_AVAILABLE = 0xff;

const INT8U OS_PRIO_EXIST = 5;
const INT8U OS_TASK_RESUME_PRIO = 6;
const INT8U OS_TASK_NOT_SUSPENDED = 7;

const INT8U OS_EVENT_TYPE_SEM = 8;
const INT8U OS_EVENT_TYPE_MBOX = 9;
const INT8U OS_EVENT_TYPE_Q = 10;
const INT8U OS_EVENT_TYPE_MUTEX = 11;
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
		void (*functionAddress) (void*);
		void* returnAddress;
};
struct OS_Q {                       /* QUEUE CONTROL BLOCK                                     */
    struct OS_Q   *OSQPtr;                  /* Link to next queue control block in list of free blocks */
    void         **OSQStart;                /* Ptr to start of queue data                              */
    void         **OSQEnd;                  /* Ptr to end   of queue data                              */
    void         **OSQIn;                   /* Ptr to where next message will be inserted  in   the Q  */
    void         **OSQOut;                  /* Ptr to where next message will be extracted from the Q  */
    INT16U         OSQSize;                 /* Size of queue (maximum number of entries)               */
    INT16U         OSQEntries;              /* Current number of entries in the queue                  */
};


struct OS_Q_DATA {
    void          *OSMsg;                   /* Pointer to next message to be extracted from queue      */
    INT16U         OSNMsgs;                 /* Number of messages in message queue                     */
    INT16U         OSQSize;                 /* Size of message queue                                   */
    INT8U        OSEventTbl[OS_EVENT_TBL_SIZE];  /* List of tasks waiting for event to occur         */
    INT8U        OSEventGrp;              /* Group corresponding to tasks waiting for event to occur */
};

extern struct OS_TCB* OSTCBList ;
extern struct OS_TCB* OSTCBPrioTbl[OS_MAX_TASKS];
extern struct OS_TCB* OSTCBCur ;
extern struct OS_TCB* OSTCBHighRdy ;
extern INT8U OSRdyGrp ;
extern INT8U OSRdyTbl[8] ;
extern INT8U OSPrioCur ;
extern INT8U OSPrioHighRdy ;
extern INT8U OSTaskCtr ;
extern BOOLEAN OSRunning ;
extern BOOLEAN OSStatRdy ;

extern EventControlBlock freeEvents[OS_MAX_EVENTS];
extern struct EventControlBlock * OSEventFreeList ;

extern OS_TCB freeTCBs[OS_MAX_TASKS];
extern struct OS_TCB* OSTCBFreeList ; 

extern OS_Q FreeOSQ[OS_MAX_EVENTS];
static struct OS_Q* OSQFreeList;

enum taskStatus {READY, RUNNING, WAITING};

void OS_Init();
void OS_Start();
void OS_EventWaitListInit();
void OS_TaskFreePool();
extern void OS_QFreePool();

struct EventControlBlock* OSCreateSemaphore();
void OS_TaskWaitListInit();

extern void OS_ENTER_CRITICAL();
extern void OS_EXIT_CRITICAL();
extern OS_STK* OSTaskStkInit(void (*task)(void *pd),void* pdata ,OS_STK* ptos, INT16U opt);
extern void OSTaskCreateHook();
extern void OS_Sched();

extern void OSSemPend(EventControlBlock* pevent, INT8U* err);
extern INT8U OSSemPost(EventControlBlock* pevent);

extern INT8U OSMboxPost(EventControlBlock* pevent, void* msg);
extern void* OSMboxPend (EventControlBlock* pevent, INT8U* err);
extern EventControlBlock* OSMboxCreate(void* msg);
extern void* getMessage(EventControlBlock*);

extern INT8U OSMutexPost(EventControlBlock* pevent);
extern void OSMutexPend (EventControlBlock* pevent, INT8U* err);
extern EventControlBlock* OSMutexCreate(INT8U prio, INT8U *err);

void TCB_INIT_FreeList(OS_TCB*, int n);
INT8U OS_TCBInit (INT8U prio, OS_STK *ptos, OS_STK *pbos, INT16U id, INT32U stk_size, void *pext, INT16U opt);
INT8U OSTaskCreate(void (*task)(void *pd), void *pdata, OS_STK *ptos, INT8U prio);
INT8U OSTaskSuspend (INT8U prio);
INT8U OSTaskResume (INT8U prio);
INT8U OSTaskQuery (INT8U prio, OS_TCB *pdata);

extern INT8U OSQPost (EventControlBlock* pevent, void* msg);
extern EventControlBlock* OSQCreate(void** start, INT16U size);
extern void* OSQPend(EventControlBlock* pevent, INT8U* err);

void OSEventInit(EventControlBlock*, INT8U);
void appendToWaitingList(EventControlBlock*,INT8U);
void eraseFromWaitingList(EventControlBlock*);
INT8U EventTaskRdy(EventControlBlock*, void*, INT8U);
INT8U getHighestPriority(EventControlBlock*);

#endif