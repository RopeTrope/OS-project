#include "../h/MemAllocator.hpp"


void MemAllocator::mem_init() {
    head = (freeMem*)((uint64*)HEAP_START_ADDR);
    head->size = ((uint64)((uint64*)HEAP_END_ADDR - (uint64*)HEAP_START_ADDR) - sizeof(MemAllocator))/MEM_BLOCK_SIZE;
    head->next = nullptr;
}

void *MemAllocator::mem_alloc(size_t size) {
    freeMem* pom = head;
    for(;pom != nullptr;pom = pom->next){
        if(pom->size >= size){
            break;
        }
    }

    if(pom == nullptr){
        return nullptr;
    }

    freeMem* pomPrev = nullptr;
    if(pom!=head){
        for(pomPrev = head;pomPrev->next != pom;pomPrev=pomPrev->next){}
    }


    size_t remainingBlocks = pom->size - size;
    if(remainingBlocks > 0){
        freeMem* newBlk = (freeMem*)((uint64*)pom + size*MEM_BLOCK_SIZE);
        newBlk->size = remainingBlocks;
        if(pomPrev) {
            pomPrev->next = newBlk;
        }else{
            head = newBlk;
        }

            newBlk->next = pom->next;
            pom->next = nullptr;
            pom->size = size;
    }else if(remainingBlocks == 0){
        if(pomPrev){
            pomPrev->next = pom->next;
        }else{
            head = pom->next;
        }
        pom->next = nullptr;
    }
    return (uint64*)pom + sizeof(freeMem);
}

int MemAllocator::mem_free(void *pointer) {
    if((uint64*)HEAP_START_ADDR > (uint64*)pointer || (uint64*)HEAP_END_ADDR < (uint64*)pointer ){
        return -1;
    }

    freeMem* cur;
    if(!head || (uint64*)head > (uint64*)pointer){
        cur = nullptr;
    }else{
        cur = head;
        freeMem* pom = nullptr;
        while((uint64*)cur < (uint64*)pointer){
            pom = cur;
            cur = cur->next;
        }
        cur = pom;
    }

    freeMem* newBlk = (freeMem*)((uint64*)pointer - sizeof(freeMem));
    if(cur){
        newBlk->next = cur->next;
        cur->next  = newBlk;
    }else{
        newBlk->next = head;
        head = newBlk;
    }

    if(cur){
        if(((uint64*)cur + cur->size*MEM_BLOCK_SIZE) == (uint64*)cur->next)
        cur->size = cur->size + cur->next->size;
        cur->next = cur->next->next;
    }
    if(newBlk->next){
        if(((uint64*)newBlk + newBlk->size*MEM_BLOCK_SIZE) == (uint64*)newBlk->next){
            newBlk->size = newBlk->size + newBlk->next->size;
            newBlk->next = newBlk->next->next;
        }
    }

    return 0;
}

MemAllocator &MemAllocator::getInstance() {
    static MemAllocator instance;
    return instance;
}
