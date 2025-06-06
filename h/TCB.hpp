#ifndef _TCB
#define _TCB
#include "../lib/hw.h"
#include "MemAllocator.hpp"

class TCB{
public:
    ~TCB(){
        MemAllocator::getInstance().mem_free(stack);
    }



    bool isFinished() const{return finished;}
    void setFinished(bool value){finished = value;}

    bool isBlocked() const{return blocked;}
    void setBlocked(bool value){blocked = value;}

    bool isClosed() const{return closed;}
    void setClosed(bool value){closed = value;}

    using Body = void(*)(void*);

    static TCB* createThread(TCB** handle,Body body,void* arg, uint64* stack_space);

    static void yield();

    static void join(TCB* handle);

    static TCB* running;

    friend class MySemaphore;

private:
    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64* stack;
    Context context;
    bool finished;
    bool closed;
    bool blocked;
    void* arg;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context* old,Context* running);

    static void dispatch();

};

#endif