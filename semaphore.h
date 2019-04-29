#ifndef SEMAPHORE_H
#define SEMAPHORE_H
class semaphore
{
	public:
		semaphore(char*, int);
		bool waitSemaphore(); 
		void signalSemaphore();
		~semaphore();
	private:
		char *name;
		int count;
};

#endif