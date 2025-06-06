#ifndef _MemAllocator
#define _MemAllocator

#include "../lib/hw.h"

struct freeMem{
    freeMem* next;
    size_t size;
};

class MemAllocator{

    freeMem* head = nullptr;

public:
  void* mem_alloc(size_t size);

  int mem_free(void* pointer);

  void mem_init();

  static MemAllocator& getInstance();

};


#endif