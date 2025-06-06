.global supervisorTrap
.extern handleTrap
.extern handleTimer
.extern handleConsole

.align 4
supervisorTrap:
j handleTrap
j handleTimer
csrw mscratch, 0
csrw mscratch, 0
csrw mscratch, 0
csrw mscratch, 0
csrw mscratch, 0
csrw mscratch, 0
csrw mscratch, 0
j handleConsole

handleTrap:
addi sp, sp, -256
.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
sd x\index, \index*8(sp)
.endr

call _ZN5Riscv10handleTrapEv

.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
ld x\index, \index*8(sp)
.endr
addi sp, sp, 256

sret

handleTimer:
addi sp, sp, -256
.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
sd x\index, \index*8(sp)
.endr

call _ZN5Riscv11handleTimerEv

.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
ld x\index, \index*8(sp)
.endr
addi sp, sp, 256

sret

handleConsole:

addi sp, sp, -256
.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
sd x\index, \index*8(sp)
.endr

call _ZN5Riscv13handleConsoleEv

.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
ld x\index, \index*8(sp)
.endr
addi sp, sp, 256

sret