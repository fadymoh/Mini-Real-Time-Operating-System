#ifndef MAILBOX_H
#define MAILBOX_H
#include "OS_CONF.h"
class mailBox
{
	public:
		mailBox();
		bool waitMailBox(message*);
		bool sendMail(message*);
		~mailBox();
	private:
		char* name;
		message * mail;
};

#endif