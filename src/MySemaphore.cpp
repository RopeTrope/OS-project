#include "../h/MySemaphore.hpp"
#include "../h/Scheduler.hpp"



void MySemaphore::open(MySemaphore **handle, int k) {
    MySemaphore* newSem = (MySemaphore*)MemAllocator::getInstance().mem_alloc(sizeof(MySemaphore) / MEM_BLOCK_SIZE + (sizeof(MySemaphore) % MEM_BLOCK_SIZE > 0 ? 1 : 0));
    newSem->n = k;
    newSem->head = nullptr;
    newSem->tail = nullptr;
    *handle = newSem;
}

int MySemaphore::close(MySemaphore *handle) {
    if(!handle){
        return -1;
    }
    TCB* thread = handle->getThread();
    while(thread){
        thread->setBlocked(false);
        thread->setClosed(true);
        Scheduler::put(thread);
        thread = handle->getThread();
    }
    int result = MemAllocator::getInstance().mem_free((void*)handle);
    return result;
}

int MySemaphore::signal(MySemaphore *handle) {
    if(!handle){
        return -1;
    }
    if((handle->n++) < 0){
        TCB* thread = handle->getThread();
        thread->setBlocked(false);
        Scheduler::put(thread);
    }

    return 0;
}

int MySemaphore::wait(MySemaphore *handle) {
    if(!handle){
        return -1;
    }
    if(--handle->n <0){
        if(TCB::running->isClosed()){
            return -2;
        }
        handle->putThread(TCB::running);
        TCB::running->setBlocked(true);
        TCB::dispatch();
    }

    return 0;
}

MySemaphore *MySemaphore::create(int k) {
    MySemaphore* newSem =(MySemaphore*)MemAllocator::getInstance().mem_alloc(sizeof(MySemaphore) / MEM_BLOCK_SIZE + (sizeof(MySemaphore) % MEM_BLOCK_SIZE > 0 ? 1 : 0));
    newSem->n = k;
    newSem->head = nullptr;
    newSem->tail = nullptr;
    return newSem;
}

TCB *MySemaphore::getThread() {
    if(!head){
        return nullptr;
    }
    TCB* thread = head->thread;
    BlockedThreads* pom = head;
    head = head->next;
    if(head == nullptr){
        tail = nullptr;
    }
    MemAllocator::getInstance().mem_free((void*)pom);
    return thread;
}

void MySemaphore::putThread(TCB *thread){
    BlockedThreads* newT =(BlockedThreads*)MemAllocator::getInstance().mem_alloc(sizeof(BlockedThreads)/MEM_BLOCK_SIZE + (sizeof(BlockedThreads)%MEM_BLOCK_SIZE>0 ? 1:0));
    newT->thread = thread;
    if(!tail){
        head = newT;
        tail = head;
    }else{
        tail->next = newT;
        tail = newT;
    }
    newT->next = nullptr;
}
