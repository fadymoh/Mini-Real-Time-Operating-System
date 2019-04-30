#ifndef TASK_H
#define TASK_H
enum taskStatus {READY, RUNNING, WAITING};
#include "OS_CONF.h";
struct EventControlBlock;
struct message;


typedef struct os_tcb
{
		OS_STK* OSTCBStkPtr; // Pointer to the task's stack

		struct os_tcb *OSTCBNext; // Pointer to next node
		struct os_tcb *OSTCBPrev; // Pointer to prev node

		EventControlBlock* OSTCBEventPtr; // Pointer to the current event
		void *OSTCBMsg; // Pointer to currently received message

		INT16U OSTCBDly;
		INT8U OSTCBStat;
		INT8U OSTCBPrio;
		INT8U OSTCBX;
		INT8U OSTCBY;
		INT8U OSTCBBitX;
		INT8U OSTCBBitY;

} OS_TCB;


void TCB_INIT_FreeList(OS_TCB*, int n);
INT8U OS_TCBInit (INT8U prio, OS_STK *ptos, OS_STK *pbos, INT16U id, INT32U stk_size, void *pext, INT16U opt);
INT8U OSTaskCreate(void (*task)(void *pd), void *pdata, OS_STK *ptos, INT8U prio);
INT8U OSTaskSuspend (INT8U prio);
INT8U OSTaskResume (INT8U prio);
INT8U OSTaskQuery (INT8U prio, OS_TCB *pdata);





#endif
