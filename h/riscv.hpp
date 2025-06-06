#ifndef _riscv
#define _riscv

class Riscv {
public:
    static void popSppSpie();

    void handleTrap();

    void handleTimer();

    void handleConsole();


};


#endif