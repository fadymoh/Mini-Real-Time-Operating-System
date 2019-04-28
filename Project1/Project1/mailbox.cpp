#include "mailbox.h"

mailBox::mailBox()
{
}

/*
	It is used when a task expects to receive a message. If a 
	message is present in the mailbox when it is called, the 
	message is retrieved, the mailbox is emptied, and the 
	retrieved message is returned to the caller. If no message 
	is present in the mailbox, it suspends the current tasks 
	until either a message is received or a user-specific 
	timeout expires.
*/
bool mailBox::waitMailBox(message *)
{
	return false;
}
/*
	Sends a message to a task through a mailbox. If the 
	mailbox already contains a message, an error code is 
	returned indicating that the mailbox is full.

*/

bool mailBox::sendMail(message *)
{
	return false;
}

mailBox::~mailBox()
{
}
