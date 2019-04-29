#ifndef MESSAGEQUEUE_H
#define MESSAGEQUEUE_H
#include "OS_CONF.h"
struct node
{
	message* data;
	node* next;
};
class messageQueue
{
	public:
		messageQueue();
		void waitForMessageQueue(message*);
		void sendMessageQueue(message*);
		~messageQueue();
	private:
		node * head;
		void insert(message*);
		void erase(message*);
};

#endif