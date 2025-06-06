#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"
#include "../h/riscv.hpp"


TCB* TCB::running = nullptr;

TCB *TCB::createThread(TCB **handle, TCB::Body body, void *arg, uint64 *stack_space) {
    TCB* nt = (TCB*)MemAllocator::getInstance().mem_alloc(sizeof(TCB)/MEM_BLOCK_SIZE + (sizeof(TCB)%MEM_BLOCK_SIZE > 0 ? 1:0));
    nt->body = body;
    nt->arg = arg;
    nt->stack = stack_space;
    nt->setFinished(false);
    nt->setBlocked(false);
    nt->setClosed(false);
    nt->context = {(uint64)&threadWrapper,stack_space != nullptr ? (uint64)&stack_space[DEFAULT_STACK_SIZE]:0};
    *handle = nt;
    Scheduler::put(nt);
    return nt;
}

void TCB::yield() {
    __asm__ volatile("li a0,0x13");
    __asm__ volatile("ecall");
}

void TCB::join(TCB *handle) {
    while(!handle->isFinished()){
        TCB::dispatch();
    }
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished() && !old->isBlocked()){
        Scheduler::put(old);
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context,&running->context);

}
