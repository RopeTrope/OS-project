#include "../h/Scheduler.hpp"
#include "../h/MemAllocator.hpp"

Elem* Scheduler::head = nullptr;
Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get() {
    if(head == nullptr){
        return nullptr;
    }
    Elem* e = head;
    head = head->next;
    if(head == nullptr){
        tail = head;
    }
    TCB* value = e->thread;
    MemAllocator::getInstance().mem_free(e);
    return value;
}

void Scheduler::put(TCB *t) {

    Elem* e = (Elem*)MemAllocator::getInstance().mem_alloc(sizeof(Elem)/MEM_BLOCK_SIZE + (sizeof(Elem)%MEM_BLOCK_SIZE > 0 ? 1:0));
    e->thread = t;
    if(tail == nullptr){
        head = e;
        tail = head;
        e->next = nullptr;
    }else{
        tail->next = e;
        tail = e;
        e->next = nullptr;
    }

}

