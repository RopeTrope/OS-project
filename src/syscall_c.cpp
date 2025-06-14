#include "../h/syscall_c.h"


void *mem_alloc(size_t size) {
    uint64 ns = (size / MEM_BLOCK_SIZE) + (size%MEM_BLOCK_SIZE > 0 ? 1:0);
    __asm__ volatile("mv a1,%0"::"r"(ns));
    __asm__ volatile("li a0,0x01");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return (void*) result;
}

int mem_free(void *pointer) {
    __asm__ volatile("mv a1,%0"::"r"(pointer));
    __asm__ volatile("li a0,0x02");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

void mem_init(){
    __asm__ volatile("li a0,0x03");
    __asm__ volatile("ecall");
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    uint64* stack;
    if(start_routine == nullptr){
        stack = nullptr;
    }else{
        stack = (uint64*)mem_alloc(DEFAULT_STACK_SIZE);
    }
    __asm__ volatile("mv a4,%0"::"r"(stack));
    __asm__ volatile("mv a3,%0"::"r"(arg));
    __asm__ volatile("mv a2,%0"::"r"(start_routine));
    __asm__ volatile("mv a1,%0"::"r"(handle));
    __asm__ volatile("li a0,0x11");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

int thread_exit() {
    __asm__ volatile("li a0,0x12");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

void thread_dispatch() {
    __asm__ volatile("li a0,0x13");
    __asm__ volatile("ecall");
}

void thread_join(thread_t handle) {
    __asm__ volatile("mv a1,%0"::"r"(handle));
    __asm__ volatile("li a0,0x14");
    __asm__ volatile("ecall");
}

int sem_open(sem_t *handle, unsigned int init) {
    __asm__ volatile("mv a2,%0"::"r"(handle));
    __asm__ volatile("mv a1,%0"::"r"(init));
    __asm__ volatile("li a0,0x21");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

int sem_close(sem_t handle) {
    __asm__ volatile("mv a1,%0"::"r"(handle));
    __asm__ volatile("li a0,0x22");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1,%0"::"r"(id));
    __asm__ volatile("li a0,0x23");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1,%0"::"r"(id));
    __asm__ volatile("li a0,0x24");
    __asm__ volatile("ecall");
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    return result;
}

int time_sleep(time_t time) {
    return 0;
}

void changeToUserMode(){
    __asm__ volatile("li a0, 0x43");
    __asm__ volatile("ecall");
}

char getc() {
    __asm__ volatile("li a0,0x41");
    __asm__ volatile("ecall");
    char c;
    __asm__ volatile("mv %0,a0":"=r"(c));
    return c;
}

void putc(char c) {
    __asm__ volatile("mv a1,%0"::"r"(c));
    __asm__ volatile("li a0,0x42");
    __asm__ volatile("ecall");

}
