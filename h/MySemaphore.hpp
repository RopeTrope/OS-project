#ifndef _MySemaphore
#define _MySemaphore
#include "TCB.hpp"
struct BlockedThreads{
    TCB* thread;
    BlockedThreads* next;
};

class MySemaphore{
public:
    static void open(MySemaphore** handle, int k);
    static int close(MySemaphore* handle);
    static int signal(MySemaphore* handle);
    static int wait(MySemaphore* handle);
    static MySemaphore* create(int k);


private:
    TCB* holder;
    int n;
    BlockedThreads* head;
    BlockedThreads* tail;
    TCB* getThread();

    void putThread(TCB* thread);



};





#endif