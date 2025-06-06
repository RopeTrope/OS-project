#include "../h/Scheduler.hpp"
#include "../h/MemAllocator.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"


void userMain();


extern "C" void supervisorTrap();

void init(){
    __asm__ volatile("csrw stvec, %0"::"r"((uint64)(&supervisorTrap) | 1));
    changeToUserMode();
    mem_init();
    TCB* idle_nit;
    thread_create(&idle_nit, nullptr, nullptr);
    TCB::running = idle_nit;
}


void main(){
    init();
    userMain();
    while(Scheduler::get()){
        thread_dispatch();
    }
}