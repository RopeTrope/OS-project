#ifndef _syscall_c
#define _syscall_c
#include "TCB.hpp"
#include "MySemaphore.hpp"

#include "../lib/hw.h"

void* mem_alloc (size_t size);

int mem_free (void*);

void mem_init();

class _thread;
typedef TCB* thread_t;

int thread_create(
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
        );

int thread_exit();

void thread_dispatch();

void thread_join (thread_t handle);

class _sem;
typedef MySemaphore* sem_t;

int sem_open(sem_t* handle, unsigned  init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

void changeToUserMode();

typedef unsigned long time_t;

int time_sleep (time_t);

const int EOF = -1;

char getc();

void putc(char);

#endif