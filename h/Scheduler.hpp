#ifndef _Scheduler
#define _Scheduler

class TCB;
struct Elem{
    TCB* thread;
    Elem* next;

    Elem(TCB* thread,Elem* next): thread(thread),next(next){}
};

class Scheduler{

private:

    static Elem* head;
    static Elem* tail;

public:
    static TCB* get();
    static void put(TCB* t);



};

#endif