#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/MemAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/MySemaphore.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleTrap() {

    uint64 reg1;
    uint64 reg2;
    uint64 reg3;
    uint64 reg4;
    __asm__ volatile("mv %0, a1":"=r"(reg1));
    __asm__ volatile("mv %0, a2":"=r"(reg2));
    __asm__ volatile("mv %0, a3":"=r"(reg3));
    __asm__ volatile("mv %0, a4":"=r"(reg4));

    uint64 mypc;
    __asm__ volatile("csrr %0,sepc":"=r"(mypc));
    uint64 cause;
    __asm__ volatile("csrr %0,scause":"=r"(cause));
    uint64 code;
    __asm__ volatile("mv %0,a0":"=r"(code));
    uint64 status;
    if(cause == 0x08 || cause == 0x09) {
        __asm__ volatile("csrr %0,sstatus":"=r"(status));

        if (code == 0x01) {
            //mem_alloc
            void* ptr = MemAllocator::getInstance().mem_alloc(reg1);
            __asm__ volatile("mv a0,%0"::"r"(ptr));
        } else if (code == 0x02) {
            //mem_free
            int result = MemAllocator::getInstance().mem_free((void*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        }else if(code == 0x03){
            MemAllocator::getInstance().mem_init();
        } else if(code == 0x11) {
            //thread_create
            TCB* res = TCB::createThread((TCB**)reg1,(TCB::Body)reg2,(void*)reg3,(uint64*)reg4);
            int r;
            if(res == nullptr){
                r = -1;
            }else{
                r = 0;
            }
            __asm__ volatile("mv a0,%0"::"r"(r));

        } else if(code == 0x12) {
            //thread_exit
            TCB::running->setFinished(true);
            TCB::dispatch();

        } else if(code == 0x13) {
            //thread_dispatch
            TCB::dispatch();

        } else if(code == 0x14) {
            //thread_join
            TCB* handle = (TCB*)reg1;
            TCB::join(handle);

        } else if(code == 0x21) {
            //sem_open
            MySemaphore::open((MySemaphore**)reg2, (int)reg1);

            MySemaphore** h = (MySemaphore**)reg2;
            int result;
            if(!h){
                result = -1;
            }else{
                result = 0;
            }
            __asm__ volatile("mv a0,%0"::"r"(result));

        } else if(code == 0x22) {
            //sem_close
            int result = MySemaphore::close((MySemaphore*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        } else if(code == 0x23) {
            //sem_wait
            int result = MySemaphore::wait((MySemaphore*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        } else if(code == 0x24) {
            //sem_signal
            int result = MySemaphore::signal((MySemaphore*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        } else if(code == 0x31) {
            //time_sleep
        } else if(code == 0x41) {
            //getc
            char c = __getc();
            __asm__ volatile("mv a0, %0"::"r"(c));
        } else if(code == 0x42) {
            //putc
            char c = (char)reg1;
            __putc(c);
        } else if(code == 0x43) {
            __asm__ volatile("csrw sstatus, %0"::"r"(status));
            __asm__ volatile("csrc sstatus, %0"::"r"(1<<8));
            __asm__ volatile("csrw sepc, %0"::"r"(mypc + 4));
            __asm__ volatile("csrc sip, %0"::"r"(1<<1));
            return;
        }
        __asm__ volatile("csrw sstatus,%0"::"r"(status));
        __asm__ volatile("csrw sepc,%0"::"r"(mypc + 4));
        __asm__ volatile("csrc sip, %0"::"r"(1<<1));
    } else {
        printString("Greska: ");
        printInt(cause);
        printString(" ");
    }
}

void Riscv::handleTimer() {
    __asm__ volatile("csrc sip, %0"::"r"(1<<1));
}

void Riscv::handleConsole() {
    console_handler();
}
