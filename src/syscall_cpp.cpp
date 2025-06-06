#include "../h/syscall_cpp.hpp"


void *operator new(size_t size) {
    void* ptr = mem_alloc(size);
    return ptr;
}
void *operator new[](size_t size) {
    void* ptr = mem_alloc(size);
    return ptr;
}

void operator delete(void *pointer) {
    mem_free(pointer);
}
void operator delete[](void *pointer) {
    mem_free(pointer);
}

Thread::Thread(void (*body)(void *), void *arg) {
    body = body;
    arg = arg;
    myHandle = nullptr;
}

Thread::~Thread() {
    join();
    delete myHandle;
}

int Thread::start() {
    return thread_create(&myHandle,body,arg);
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Thread::Thread() {
    myHandle = nullptr;
    body = wrapper;
    arg = this;
}

void Thread::wrapper(void *arg) {
    Thread* thread = (Thread*) arg;
    thread->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    int result = sem_wait(myHandle);
    return result;
}

int Semaphore::signal() {
    int result = sem_signal(myHandle);
    return result;
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
