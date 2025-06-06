
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	3b013103          	ld	sp,944(sp) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	421050ef          	jal	ra,80005c3c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.extern handleTimer
.extern handleConsole

.align 4
supervisorTrap:
j handleTrap
    80001000:	0280006f          	j	80001028 <handleTrap>
j handleTimer
    80001004:	1240006f          	j	80001128 <handleTimer>
csrw mscratch, 0
    80001008:	34005073          	csrwi	mscratch,0
csrw mscratch, 0
    8000100c:	34005073          	csrwi	mscratch,0
csrw mscratch, 0
    80001010:	34005073          	csrwi	mscratch,0
csrw mscratch, 0
    80001014:	34005073          	csrwi	mscratch,0
csrw mscratch, 0
    80001018:	34005073          	csrwi	mscratch,0
csrw mscratch, 0
    8000101c:	34005073          	csrwi	mscratch,0
csrw mscratch, 0
    80001020:	34005073          	csrwi	mscratch,0
j handleConsole
    80001024:	20c0006f          	j	80001230 <handleConsole>

0000000080001028 <handleTrap>:

handleTrap:
addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256
.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
sd x\index, \index*8(sp)
.endr
    8000102c:	00113423          	sd	ra,8(sp)
    80001030:	00213823          	sd	sp,16(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    80001038:	02413023          	sd	tp,32(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    80001040:	02613823          	sd	t1,48(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    80001048:	04813023          	sd	s0,64(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    80001050:	04b13c23          	sd	a1,88(sp)
    80001054:	06c13023          	sd	a2,96(sp)
    80001058:	06d13423          	sd	a3,104(sp)
    8000105c:	06e13823          	sd	a4,112(sp)
    80001060:	06f13c23          	sd	a5,120(sp)
    80001064:	09013023          	sd	a6,128(sp)
    80001068:	09113423          	sd	a7,136(sp)
    8000106c:	09213823          	sd	s2,144(sp)
    80001070:	09313c23          	sd	s3,152(sp)
    80001074:	0b413023          	sd	s4,160(sp)
    80001078:	0b513423          	sd	s5,168(sp)
    8000107c:	0b613823          	sd	s6,176(sp)
    80001080:	0b713c23          	sd	s7,184(sp)
    80001084:	0d813023          	sd	s8,192(sp)
    80001088:	0d913423          	sd	s9,200(sp)
    8000108c:	0da13823          	sd	s10,208(sp)
    80001090:	0db13c23          	sd	s11,216(sp)
    80001094:	0fc13023          	sd	t3,224(sp)
    80001098:	0fd13423          	sd	t4,232(sp)
    8000109c:	0fe13823          	sd	t5,240(sp)
    800010a0:	0ff13c23          	sd	t6,248(sp)

call _ZN5Riscv10handleTrapEv
    800010a4:	044010ef          	jal	ra,800020e8 <_ZN5Riscv10handleTrapEv>

.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
ld x\index, \index*8(sp)
.endr
    800010a8:	00813083          	ld	ra,8(sp)
    800010ac:	01013103          	ld	sp,16(sp)
    800010b0:	01813183          	ld	gp,24(sp)
    800010b4:	02013203          	ld	tp,32(sp)
    800010b8:	02813283          	ld	t0,40(sp)
    800010bc:	03013303          	ld	t1,48(sp)
    800010c0:	03813383          	ld	t2,56(sp)
    800010c4:	04013403          	ld	s0,64(sp)
    800010c8:	04813483          	ld	s1,72(sp)
    800010cc:	05813583          	ld	a1,88(sp)
    800010d0:	06013603          	ld	a2,96(sp)
    800010d4:	06813683          	ld	a3,104(sp)
    800010d8:	07013703          	ld	a4,112(sp)
    800010dc:	07813783          	ld	a5,120(sp)
    800010e0:	08013803          	ld	a6,128(sp)
    800010e4:	08813883          	ld	a7,136(sp)
    800010e8:	09013903          	ld	s2,144(sp)
    800010ec:	09813983          	ld	s3,152(sp)
    800010f0:	0a013a03          	ld	s4,160(sp)
    800010f4:	0a813a83          	ld	s5,168(sp)
    800010f8:	0b013b03          	ld	s6,176(sp)
    800010fc:	0b813b83          	ld	s7,184(sp)
    80001100:	0c013c03          	ld	s8,192(sp)
    80001104:	0c813c83          	ld	s9,200(sp)
    80001108:	0d013d03          	ld	s10,208(sp)
    8000110c:	0d813d83          	ld	s11,216(sp)
    80001110:	0e013e03          	ld	t3,224(sp)
    80001114:	0e813e83          	ld	t4,232(sp)
    80001118:	0f013f03          	ld	t5,240(sp)
    8000111c:	0f813f83          	ld	t6,248(sp)
addi sp, sp, 256
    80001120:	10010113          	addi	sp,sp,256

sret
    80001124:	10200073          	sret

0000000080001128 <handleTimer>:

handleTimer:
addi sp, sp, -256
    80001128:	f0010113          	addi	sp,sp,-256
.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
sd x\index, \index*8(sp)
.endr
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00213823          	sd	sp,16(sp)
    80001134:	00313c23          	sd	gp,24(sp)
    80001138:	02413023          	sd	tp,32(sp)
    8000113c:	02513423          	sd	t0,40(sp)
    80001140:	02613823          	sd	t1,48(sp)
    80001144:	02713c23          	sd	t2,56(sp)
    80001148:	04813023          	sd	s0,64(sp)
    8000114c:	04913423          	sd	s1,72(sp)
    80001150:	04a13823          	sd	a0,80(sp)
    80001154:	04b13c23          	sd	a1,88(sp)
    80001158:	06c13023          	sd	a2,96(sp)
    8000115c:	06d13423          	sd	a3,104(sp)
    80001160:	06e13823          	sd	a4,112(sp)
    80001164:	06f13c23          	sd	a5,120(sp)
    80001168:	09013023          	sd	a6,128(sp)
    8000116c:	09113423          	sd	a7,136(sp)
    80001170:	09213823          	sd	s2,144(sp)
    80001174:	09313c23          	sd	s3,152(sp)
    80001178:	0b413023          	sd	s4,160(sp)
    8000117c:	0b513423          	sd	s5,168(sp)
    80001180:	0b613823          	sd	s6,176(sp)
    80001184:	0b713c23          	sd	s7,184(sp)
    80001188:	0d813023          	sd	s8,192(sp)
    8000118c:	0d913423          	sd	s9,200(sp)
    80001190:	0da13823          	sd	s10,208(sp)
    80001194:	0db13c23          	sd	s11,216(sp)
    80001198:	0fc13023          	sd	t3,224(sp)
    8000119c:	0fd13423          	sd	t4,232(sp)
    800011a0:	0fe13823          	sd	t5,240(sp)
    800011a4:	0ff13c23          	sd	t6,248(sp)

call _ZN5Riscv11handleTimerEv
    800011a8:	1bc010ef          	jal	ra,80002364 <_ZN5Riscv11handleTimerEv>

.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
ld x\index, \index*8(sp)
.endr
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)
addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

sret
    8000122c:	10200073          	sret

0000000080001230 <handleConsole>:

handleConsole:

addi sp, sp, -256
    80001230:	f0010113          	addi	sp,sp,-256
.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
sd x\index, \index*8(sp)
.endr
    80001234:	00113423          	sd	ra,8(sp)
    80001238:	00213823          	sd	sp,16(sp)
    8000123c:	00313c23          	sd	gp,24(sp)
    80001240:	02413023          	sd	tp,32(sp)
    80001244:	02513423          	sd	t0,40(sp)
    80001248:	02613823          	sd	t1,48(sp)
    8000124c:	02713c23          	sd	t2,56(sp)
    80001250:	04813023          	sd	s0,64(sp)
    80001254:	04913423          	sd	s1,72(sp)
    80001258:	04a13823          	sd	a0,80(sp)
    8000125c:	04b13c23          	sd	a1,88(sp)
    80001260:	06c13023          	sd	a2,96(sp)
    80001264:	06d13423          	sd	a3,104(sp)
    80001268:	06e13823          	sd	a4,112(sp)
    8000126c:	06f13c23          	sd	a5,120(sp)
    80001270:	09013023          	sd	a6,128(sp)
    80001274:	09113423          	sd	a7,136(sp)
    80001278:	09213823          	sd	s2,144(sp)
    8000127c:	09313c23          	sd	s3,152(sp)
    80001280:	0b413023          	sd	s4,160(sp)
    80001284:	0b513423          	sd	s5,168(sp)
    80001288:	0b613823          	sd	s6,176(sp)
    8000128c:	0b713c23          	sd	s7,184(sp)
    80001290:	0d813023          	sd	s8,192(sp)
    80001294:	0d913423          	sd	s9,200(sp)
    80001298:	0da13823          	sd	s10,208(sp)
    8000129c:	0db13c23          	sd	s11,216(sp)
    800012a0:	0fc13023          	sd	t3,224(sp)
    800012a4:	0fd13423          	sd	t4,232(sp)
    800012a8:	0fe13823          	sd	t5,240(sp)
    800012ac:	0ff13c23          	sd	t6,248(sp)

call _ZN5Riscv13handleConsoleEv
    800012b0:	0d4010ef          	jal	ra,80002384 <_ZN5Riscv13handleConsoleEv>

.irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
ld x\index, \index*8(sp)
.endr
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	01013103          	ld	sp,16(sp)
    800012bc:	01813183          	ld	gp,24(sp)
    800012c0:	02013203          	ld	tp,32(sp)
    800012c4:	02813283          	ld	t0,40(sp)
    800012c8:	03013303          	ld	t1,48(sp)
    800012cc:	03813383          	ld	t2,56(sp)
    800012d0:	04013403          	ld	s0,64(sp)
    800012d4:	04813483          	ld	s1,72(sp)
    800012d8:	05013503          	ld	a0,80(sp)
    800012dc:	05813583          	ld	a1,88(sp)
    800012e0:	06013603          	ld	a2,96(sp)
    800012e4:	06813683          	ld	a3,104(sp)
    800012e8:	07013703          	ld	a4,112(sp)
    800012ec:	07813783          	ld	a5,120(sp)
    800012f0:	08013803          	ld	a6,128(sp)
    800012f4:	08813883          	ld	a7,136(sp)
    800012f8:	09013903          	ld	s2,144(sp)
    800012fc:	09813983          	ld	s3,152(sp)
    80001300:	0a013a03          	ld	s4,160(sp)
    80001304:	0a813a83          	ld	s5,168(sp)
    80001308:	0b013b03          	ld	s6,176(sp)
    8000130c:	0b813b83          	ld	s7,184(sp)
    80001310:	0c013c03          	ld	s8,192(sp)
    80001314:	0c813c83          	ld	s9,200(sp)
    80001318:	0d013d03          	ld	s10,208(sp)
    8000131c:	0d813d83          	ld	s11,216(sp)
    80001320:	0e013e03          	ld	t3,224(sp)
    80001324:	0e813e83          	ld	t4,232(sp)
    80001328:	0f013f03          	ld	t5,240(sp)
    8000132c:	0f813f83          	ld	t6,248(sp)
addi sp, sp, 256
    80001330:	10010113          	addi	sp,sp,256

    80001334:	10200073          	sret

0000000080001338 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type   _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function

_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra,0*8(a0)
    80001338:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp,1*8(a0)
    8000133c:	00253423          	sd	sp,8(a0)

    ld ra,0*8(a1)
    80001340:	0005b083          	ld	ra,0(a1)
    ld sp,1*8(a1)
    80001344:	0085b103          	ld	sp,8(a1)

    80001348:	00008067          	ret

000000008000134c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000134c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001350:	00b29a63          	bne	t0,a1,80001364 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001354:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001358:	fe029ae3          	bnez	t0,8000134c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000135c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001360:	00008067          	ret

0000000080001364 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001364:	00100513          	li	a0,1
    80001368:	00008067          	ret

000000008000136c <_Z9mem_allocm>:
#include "../h/syscall_c.h"


void *mem_alloc(size_t size) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    uint64 ns = (size / MEM_BLOCK_SIZE) + (size%MEM_BLOCK_SIZE > 0 ? 1:0);
    80001378:	00655793          	srli	a5,a0,0x6
    8000137c:	03f57513          	andi	a0,a0,63
    80001380:	00050463          	beqz	a0,80001388 <_Z9mem_allocm+0x1c>
    80001384:	00100513          	li	a0,1
    80001388:	00a78533          	add	a0,a5,a0
    __asm__ volatile("mv a1,%0"::"r"(ns));
    8000138c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x01");
    80001390:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001394:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    80001398:	00050513          	mv	a0,a0
    return (void*) result;
}
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z8mem_freePv>:

int mem_free(void *pointer) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1,%0"::"r"(pointer));
    800013b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x02");
    800013b8:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    800013bc:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    800013c0:	00050513          	mv	a0,a0
    return result;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z8mem_initv>:

void mem_init(){
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x03");
    800013e0:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    800013e4:	00000073          	ecall
}
    800013e8:	00813403          	ld	s0,8(sp)
    800013ec:	01010113          	addi	sp,sp,16
    800013f0:	00008067          	ret

00000000800013f4 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800013f4:	fd010113          	addi	sp,sp,-48
    800013f8:	02113423          	sd	ra,40(sp)
    800013fc:	02813023          	sd	s0,32(sp)
    80001400:	00913c23          	sd	s1,24(sp)
    80001404:	01213823          	sd	s2,16(sp)
    80001408:	01313423          	sd	s3,8(sp)
    8000140c:	03010413          	addi	s0,sp,48
    80001410:	00050913          	mv	s2,a0
    80001414:	00058493          	mv	s1,a1
    80001418:	00060993          	mv	s3,a2
    uint64* stack;
    if(start_routine == nullptr){
    8000141c:	04058663          	beqz	a1,80001468 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
        stack = nullptr;
    }else{
        stack = (uint64*)mem_alloc(DEFAULT_STACK_SIZE);
    80001420:	00001537          	lui	a0,0x1
    80001424:	00000097          	auipc	ra,0x0
    80001428:	f48080e7          	jalr	-184(ra) # 8000136c <_Z9mem_allocm>
    }
    __asm__ volatile("mv a4,%0"::"r"(stack));
    8000142c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3,%0"::"r"(arg));
    80001430:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2,%0"::"r"(start_routine));
    80001434:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1,%0"::"r"(handle));
    80001438:	00090593          	mv	a1,s2
    __asm__ volatile("li a0,0x11");
    8000143c:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001440:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    80001444:	00050513          	mv	a0,a0
    return result;
}
    80001448:	0005051b          	sext.w	a0,a0
    8000144c:	02813083          	ld	ra,40(sp)
    80001450:	02013403          	ld	s0,32(sp)
    80001454:	01813483          	ld	s1,24(sp)
    80001458:	01013903          	ld	s2,16(sp)
    8000145c:	00813983          	ld	s3,8(sp)
    80001460:	03010113          	addi	sp,sp,48
    80001464:	00008067          	ret
        stack = nullptr;
    80001468:	00000513          	li	a0,0
    8000146c:	fc1ff06f          	j	8000142c <_Z13thread_createPP3TCBPFvPvES2_+0x38>

0000000080001470 <_Z11thread_exitv>:

int thread_exit() {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x12");
    8000147c:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    80001480:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    80001484:	00050513          	mv	a0,a0
    return result;
}
    80001488:	0005051b          	sext.w	a0,a0
    8000148c:	00813403          	ld	s0,8(sp)
    80001490:	01010113          	addi	sp,sp,16
    80001494:	00008067          	ret

0000000080001498 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00813423          	sd	s0,8(sp)
    800014a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x13");
    800014a4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800014a8:	00000073          	ecall
}
    800014ac:	00813403          	ld	s0,8(sp)
    800014b0:	01010113          	addi	sp,sp,16
    800014b4:	00008067          	ret

00000000800014b8 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1,%0"::"r"(handle));
    800014c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x14");
    800014c8:	01400513          	li	a0,20
    __asm__ volatile("ecall");
    800014cc:	00000073          	ecall
}
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_Z8sem_openPP11MySemaphorej>:

int sem_open(sem_t *handle, unsigned int init) {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2,%0"::"r"(handle));
    800014e8:	00050613          	mv	a2,a0
    __asm__ volatile("mv a1,%0"::"r"(init));
    800014ec:	00058593          	mv	a1,a1
    __asm__ volatile("li a0,0x21");
    800014f0:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    800014f4:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    800014f8:	00050513          	mv	a0,a0
    return result;
}
    800014fc:	0005051b          	sext.w	a0,a0
    80001500:	00813403          	ld	s0,8(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_Z9sem_closeP11MySemaphore>:

int sem_close(sem_t handle) {
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1,%0"::"r"(handle));
    80001518:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x22");
    8000151c:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    80001520:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    80001524:	00050513          	mv	a0,a0
    return result;
}
    80001528:	0005051b          	sext.w	a0,a0
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z8sem_waitP11MySemaphore>:

int sem_wait(sem_t id) {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1,%0"::"r"(id));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x23");
    80001548:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    80001550:	00050513          	mv	a0,a0
    return result;
}
    80001554:	0005051b          	sext.w	a0,a0
    80001558:	00813403          	ld	s0,8(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_Z10sem_signalP11MySemaphore>:

int sem_signal(sem_t id) {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00813423          	sd	s0,8(sp)
    8000156c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1,%0"::"r"(id));
    80001570:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x24");
    80001574:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    80001578:	00000073          	ecall
    uint64 result;
    __asm__ volatile("mv %0,a0":"=r"(result));
    8000157c:	00050513          	mv	a0,a0
    return result;
}
    80001580:	0005051b          	sext.w	a0,a0
    80001584:	00813403          	ld	s0,8(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00813423          	sd	s0,8(sp)
    80001598:	01010413          	addi	s0,sp,16
    return 0;
}
    8000159c:	00000513          	li	a0,0
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_Z16changeToUserModev>:

void changeToUserMode(){
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    800015b8:	04300513          	li	a0,67
    __asm__ volatile("ecall");
    800015bc:	00000073          	ecall
}
    800015c0:	00813403          	ld	s0,8(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret

00000000800015cc <_Z4getcv>:

char getc() {
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00813423          	sd	s0,8(sp)
    800015d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x41");
    800015d8:	04100513          	li	a0,65
    __asm__ volatile("ecall");
    800015dc:	00000073          	ecall
    char c;
    __asm__ volatile("mv %0,a0":"=r"(c));
    800015e0:	00050513          	mv	a0,a0
    return c;
}
    800015e4:	0ff57513          	andi	a0,a0,255
    800015e8:	00813403          	ld	s0,8(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_Z4putcc>:

void putc(char c) {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1,%0"::"r"(c));
    80001600:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x42");
    80001604:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80001608:	00000073          	ecall

}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret

0000000080001618 <_ZN11MySemaphore4openEPPS_i>:
#include "../h/MySemaphore.hpp"
#include "../h/Scheduler.hpp"



void MySemaphore::open(MySemaphore **handle, int k) {
    80001618:	fe010113          	addi	sp,sp,-32
    8000161c:	00113c23          	sd	ra,24(sp)
    80001620:	00813823          	sd	s0,16(sp)
    80001624:	00913423          	sd	s1,8(sp)
    80001628:	01213023          	sd	s2,0(sp)
    8000162c:	02010413          	addi	s0,sp,32
    80001630:	00050493          	mv	s1,a0
    80001634:	00058913          	mv	s2,a1
    MySemaphore* newSem = (MySemaphore*)MemAllocator::getInstance().mem_alloc(sizeof(MySemaphore) / MEM_BLOCK_SIZE + (sizeof(MySemaphore) % MEM_BLOCK_SIZE > 0 ? 1 : 0));
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	4dc080e7          	jalr	1244(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001640:	00100593          	li	a1,1
    80001644:	00000097          	auipc	ra,0x0
    80001648:	310080e7          	jalr	784(ra) # 80001954 <_ZN12MemAllocator9mem_allocEm>
    newSem->n = k;
    8000164c:	01252423          	sw	s2,8(a0) # 1008 <_entry-0x7fffeff8>
    newSem->head = nullptr;
    80001650:	00053823          	sd	zero,16(a0)
    newSem->tail = nullptr;
    80001654:	00053c23          	sd	zero,24(a0)
    *handle = newSem;
    80001658:	00a4b023          	sd	a0,0(s1)
}
    8000165c:	01813083          	ld	ra,24(sp)
    80001660:	01013403          	ld	s0,16(sp)
    80001664:	00813483          	ld	s1,8(sp)
    80001668:	00013903          	ld	s2,0(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret

0000000080001674 <_ZN11MySemaphore6createEi>:
    }

    return 0;
}

MySemaphore *MySemaphore::create(int k) {
    80001674:	fe010113          	addi	sp,sp,-32
    80001678:	00113c23          	sd	ra,24(sp)
    8000167c:	00813823          	sd	s0,16(sp)
    80001680:	00913423          	sd	s1,8(sp)
    80001684:	02010413          	addi	s0,sp,32
    80001688:	00050493          	mv	s1,a0
    MySemaphore* newSem =(MySemaphore*)MemAllocator::getInstance().mem_alloc(sizeof(MySemaphore) / MEM_BLOCK_SIZE + (sizeof(MySemaphore) % MEM_BLOCK_SIZE > 0 ? 1 : 0));
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	488080e7          	jalr	1160(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001694:	00100593          	li	a1,1
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	2bc080e7          	jalr	700(ra) # 80001954 <_ZN12MemAllocator9mem_allocEm>
    newSem->n = k;
    800016a0:	00952423          	sw	s1,8(a0)
    newSem->head = nullptr;
    800016a4:	00053823          	sd	zero,16(a0)
    newSem->tail = nullptr;
    800016a8:	00053c23          	sd	zero,24(a0)
    return newSem;
}
    800016ac:	01813083          	ld	ra,24(sp)
    800016b0:	01013403          	ld	s0,16(sp)
    800016b4:	00813483          	ld	s1,8(sp)
    800016b8:	02010113          	addi	sp,sp,32
    800016bc:	00008067          	ret

00000000800016c0 <_ZN11MySemaphore9getThreadEv>:

TCB *MySemaphore::getThread() {
    800016c0:	fe010113          	addi	sp,sp,-32
    800016c4:	00113c23          	sd	ra,24(sp)
    800016c8:	00813823          	sd	s0,16(sp)
    800016cc:	00913423          	sd	s1,8(sp)
    800016d0:	01213023          	sd	s2,0(sp)
    800016d4:	02010413          	addi	s0,sp,32
    if(!head){
    800016d8:	01053483          	ld	s1,16(a0)
    800016dc:	04048663          	beqz	s1,80001728 <_ZN11MySemaphore9getThreadEv+0x68>
        return nullptr;
    }
    TCB* thread = head->thread;
    800016e0:	0004b903          	ld	s2,0(s1)
    BlockedThreads* pom = head;
    head = head->next;
    800016e4:	0084b783          	ld	a5,8(s1)
    800016e8:	00f53823          	sd	a5,16(a0)
    if(head == nullptr){
    800016ec:	02078a63          	beqz	a5,80001720 <_ZN11MySemaphore9getThreadEv+0x60>
        tail = nullptr;
    }
    MemAllocator::getInstance().mem_free((void*)pom);
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	424080e7          	jalr	1060(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    800016f8:	00048593          	mv	a1,s1
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	308080e7          	jalr	776(ra) # 80001a04 <_ZN12MemAllocator8mem_freeEPv>
    return thread;
}
    80001704:	00090513          	mv	a0,s2
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	00013903          	ld	s2,0(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret
        tail = nullptr;
    80001720:	00053c23          	sd	zero,24(a0)
    80001724:	fcdff06f          	j	800016f0 <_ZN11MySemaphore9getThreadEv+0x30>
        return nullptr;
    80001728:	00048913          	mv	s2,s1
    8000172c:	fd9ff06f          	j	80001704 <_ZN11MySemaphore9getThreadEv+0x44>

0000000080001730 <_ZN11MySemaphore5closeEPS_>:
    if(!handle){
    80001730:	06050a63          	beqz	a0,800017a4 <_ZN11MySemaphore5closeEPS_+0x74>
int MySemaphore::close(MySemaphore *handle) {
    80001734:	fe010113          	addi	sp,sp,-32
    80001738:	00113c23          	sd	ra,24(sp)
    8000173c:	00813823          	sd	s0,16(sp)
    80001740:	00913423          	sd	s1,8(sp)
    80001744:	02010413          	addi	s0,sp,32
    80001748:	00050493          	mv	s1,a0
    TCB* thread = handle->getThread();
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	f74080e7          	jalr	-140(ra) # 800016c0 <_ZN11MySemaphore9getThreadEv>
    while(thread){
    80001754:	02050463          	beqz	a0,8000177c <_ZN11MySemaphore5closeEPS_+0x4c>

    bool isFinished() const{return finished;}
    void setFinished(bool value){finished = value;}

    bool isBlocked() const{return blocked;}
    void setBlocked(bool value){blocked = value;}
    80001758:	02050123          	sb	zero,34(a0)

    bool isClosed() const{return closed;}
    void setClosed(bool value){closed = value;}
    8000175c:	00100793          	li	a5,1
    80001760:	02f500a3          	sb	a5,33(a0)
        Scheduler::put(thread);
    80001764:	00000097          	auipc	ra,0x0
    80001768:	44c080e7          	jalr	1100(ra) # 80001bb0 <_ZN9Scheduler3putEP3TCB>
        thread = handle->getThread();
    8000176c:	00048513          	mv	a0,s1
    80001770:	00000097          	auipc	ra,0x0
    80001774:	f50080e7          	jalr	-176(ra) # 800016c0 <_ZN11MySemaphore9getThreadEv>
    while(thread){
    80001778:	fddff06f          	j	80001754 <_ZN11MySemaphore5closeEPS_+0x24>
    int result = MemAllocator::getInstance().mem_free((void*)handle);
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	398080e7          	jalr	920(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001784:	00048593          	mv	a1,s1
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	27c080e7          	jalr	636(ra) # 80001a04 <_ZN12MemAllocator8mem_freeEPv>
}
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	00813483          	ld	s1,8(sp)
    8000179c:	02010113          	addi	sp,sp,32
    800017a0:	00008067          	ret
        return -1;
    800017a4:	fff00513          	li	a0,-1
}
    800017a8:	00008067          	ret

00000000800017ac <_ZN11MySemaphore6signalEPS_>:
    if(!handle){
    800017ac:	04050a63          	beqz	a0,80001800 <_ZN11MySemaphore6signalEPS_+0x54>
    if((handle->n++) < 0){
    800017b0:	00852783          	lw	a5,8(a0)
    800017b4:	0017871b          	addiw	a4,a5,1
    800017b8:	00e52423          	sw	a4,8(a0)
    800017bc:	0007c663          	bltz	a5,800017c8 <_ZN11MySemaphore6signalEPS_+0x1c>
    return 0;
    800017c0:	00000513          	li	a0,0
}
    800017c4:	00008067          	ret
int MySemaphore::signal(MySemaphore *handle) {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
        TCB* thread = handle->getThread();
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	ee8080e7          	jalr	-280(ra) # 800016c0 <_ZN11MySemaphore9getThreadEv>
    void setBlocked(bool value){blocked = value;}
    800017e0:	02050123          	sb	zero,34(a0)
        Scheduler::put(thread);
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	3cc080e7          	jalr	972(ra) # 80001bb0 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800017ec:	00000513          	li	a0,0
}
    800017f0:	00813083          	ld	ra,8(sp)
    800017f4:	00013403          	ld	s0,0(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret
        return -1;
    80001800:	fff00513          	li	a0,-1
    80001804:	00008067          	ret

0000000080001808 <_ZN11MySemaphore9putThreadEP3TCB>:

void MySemaphore::putThread(TCB *thread){
    80001808:	fe010113          	addi	sp,sp,-32
    8000180c:	00113c23          	sd	ra,24(sp)
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	01213023          	sd	s2,0(sp)
    8000181c:	02010413          	addi	s0,sp,32
    80001820:	00050493          	mv	s1,a0
    80001824:	00058913          	mv	s2,a1
    BlockedThreads* newT =(BlockedThreads*)MemAllocator::getInstance().mem_alloc(sizeof(BlockedThreads)/MEM_BLOCK_SIZE + (sizeof(BlockedThreads)%MEM_BLOCK_SIZE>0 ? 1:0));
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	2ec080e7          	jalr	748(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001830:	00100593          	li	a1,1
    80001834:	00000097          	auipc	ra,0x0
    80001838:	120080e7          	jalr	288(ra) # 80001954 <_ZN12MemAllocator9mem_allocEm>
    newT->thread = thread;
    8000183c:	01253023          	sd	s2,0(a0)
    if(!tail){
    80001840:	0184b783          	ld	a5,24(s1)
    80001844:	02078463          	beqz	a5,8000186c <_ZN11MySemaphore9putThreadEP3TCB+0x64>
        head = newT;
        tail = head;
    }else{
        tail->next = newT;
    80001848:	00a7b423          	sd	a0,8(a5)
        tail = newT;
    8000184c:	00a4bc23          	sd	a0,24(s1)
    }
    newT->next = nullptr;
    80001850:	00053423          	sd	zero,8(a0)
}
    80001854:	01813083          	ld	ra,24(sp)
    80001858:	01013403          	ld	s0,16(sp)
    8000185c:	00813483          	ld	s1,8(sp)
    80001860:	00013903          	ld	s2,0(sp)
    80001864:	02010113          	addi	sp,sp,32
    80001868:	00008067          	ret
        head = newT;
    8000186c:	00a4b823          	sd	a0,16(s1)
        tail = head;
    80001870:	00a4bc23          	sd	a0,24(s1)
    80001874:	fddff06f          	j	80001850 <_ZN11MySemaphore9putThreadEP3TCB+0x48>

0000000080001878 <_ZN11MySemaphore4waitEPS_>:
    if(!handle){
    80001878:	06050e63          	beqz	a0,800018f4 <_ZN11MySemaphore4waitEPS_+0x7c>
    if(--handle->n <0){
    8000187c:	00852783          	lw	a5,8(a0)
    80001880:	fff7879b          	addiw	a5,a5,-1
    80001884:	00f52423          	sw	a5,8(a0)
    80001888:	02079713          	slli	a4,a5,0x20
    8000188c:	00074663          	bltz	a4,80001898 <_ZN11MySemaphore4waitEPS_+0x20>
    return 0;
    80001890:	00000513          	li	a0,0
    80001894:	00008067          	ret
        if(TCB::running->isClosed()){
    80001898:	00009797          	auipc	a5,0x9
    8000189c:	b207b783          	ld	a5,-1248(a5) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018a0:	0007b583          	ld	a1,0(a5)
    bool isClosed() const{return closed;}
    800018a4:	0215c783          	lbu	a5,33(a1)
    800018a8:	04079a63          	bnez	a5,800018fc <_ZN11MySemaphore4waitEPS_+0x84>
int MySemaphore::wait(MySemaphore *handle) {
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00113423          	sd	ra,8(sp)
    800018b4:	00813023          	sd	s0,0(sp)
    800018b8:	01010413          	addi	s0,sp,16
        handle->putThread(TCB::running);
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	f4c080e7          	jalr	-180(ra) # 80001808 <_ZN11MySemaphore9putThreadEP3TCB>
        TCB::running->setBlocked(true);
    800018c4:	00009797          	auipc	a5,0x9
    800018c8:	af47b783          	ld	a5,-1292(a5) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018cc:	0007b783          	ld	a5,0(a5)
    void setBlocked(bool value){blocked = value;}
    800018d0:	00100713          	li	a4,1
    800018d4:	02e78123          	sb	a4,34(a5)
        TCB::dispatch();
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	bf8080e7          	jalr	-1032(ra) # 800024d0 <_ZN3TCB8dispatchEv>
    return 0;
    800018e0:	00000513          	li	a0,0
}
    800018e4:	00813083          	ld	ra,8(sp)
    800018e8:	00013403          	ld	s0,0(sp)
    800018ec:	01010113          	addi	sp,sp,16
    800018f0:	00008067          	ret
        return -1;
    800018f4:	fff00513          	li	a0,-1
    800018f8:	00008067          	ret
            return -2;
    800018fc:	ffe00513          	li	a0,-2
}
    80001900:	00008067          	ret

0000000080001904 <_ZN12MemAllocator8mem_initEv>:
#include "../h/MemAllocator.hpp"


void MemAllocator::mem_init() {
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00813423          	sd	s0,8(sp)
    8000190c:	01010413          	addi	s0,sp,16
    head = (freeMem*)((uint64*)HEAP_START_ADDR);
    80001910:	00009797          	auipc	a5,0x9
    80001914:	a907b783          	ld	a5,-1392(a5) # 8000a3a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001918:	0007b703          	ld	a4,0(a5)
    8000191c:	00e53023          	sd	a4,0(a0)
    head->size = ((uint64)((uint64*)HEAP_END_ADDR - (uint64*)HEAP_START_ADDR) - sizeof(MemAllocator))/MEM_BLOCK_SIZE;
    80001920:	00009797          	auipc	a5,0x9
    80001924:	aa07b783          	ld	a5,-1376(a5) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001928:	0007b783          	ld	a5,0(a5)
    8000192c:	40e787b3          	sub	a5,a5,a4
    80001930:	4037d793          	srai	a5,a5,0x3
    80001934:	ff878793          	addi	a5,a5,-8
    80001938:	0067d793          	srli	a5,a5,0x6
    8000193c:	00f73423          	sd	a5,8(a4)
    head->next = nullptr;
    80001940:	00053783          	ld	a5,0(a0)
    80001944:	0007b023          	sd	zero,0(a5)
}
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_ZN12MemAllocator9mem_allocEm>:

void *MemAllocator::mem_alloc(size_t size) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    80001960:	00050693          	mv	a3,a0
    freeMem* pom = head;
    80001964:	00053783          	ld	a5,0(a0)
    80001968:	00078513          	mv	a0,a5
    for(;pom != nullptr;pom = pom->next){
    8000196c:	00050a63          	beqz	a0,80001980 <_ZN12MemAllocator9mem_allocEm+0x2c>
        if(pom->size >= size){
    80001970:	00853703          	ld	a4,8(a0)
    80001974:	00b77663          	bgeu	a4,a1,80001980 <_ZN12MemAllocator9mem_allocEm+0x2c>
    for(;pom != nullptr;pom = pom->next){
    80001978:	00053503          	ld	a0,0(a0)
    8000197c:	ff1ff06f          	j	8000196c <_ZN12MemAllocator9mem_allocEm+0x18>
            break;
        }
    }

    if(pom == nullptr){
    80001980:	04050463          	beqz	a0,800019c8 <_ZN12MemAllocator9mem_allocEm+0x74>
        return nullptr;
    }

    freeMem* pomPrev = nullptr;
    if(pom!=head){
    80001984:	04f50863          	beq	a0,a5,800019d4 <_ZN12MemAllocator9mem_allocEm+0x80>
        for(pomPrev = head;pomPrev->next != pom;pomPrev=pomPrev->next){}
    80001988:	00078713          	mv	a4,a5
    8000198c:	0007b783          	ld	a5,0(a5)
    80001990:	fea79ce3          	bne	a5,a0,80001988 <_ZN12MemAllocator9mem_allocEm+0x34>
    }


    size_t remainingBlocks = pom->size - size;
    80001994:	00853783          	ld	a5,8(a0)
    80001998:	40b78633          	sub	a2,a5,a1
    if(remainingBlocks > 0){
    8000199c:	04b78463          	beq	a5,a1,800019e4 <_ZN12MemAllocator9mem_allocEm+0x90>
        freeMem* newBlk = (freeMem*)((uint64*)pom + size*MEM_BLOCK_SIZE);
    800019a0:	00959793          	slli	a5,a1,0x9
    800019a4:	00f507b3          	add	a5,a0,a5
        newBlk->size = remainingBlocks;
    800019a8:	00c7b423          	sd	a2,8(a5)
        if(pomPrev) {
    800019ac:	02070863          	beqz	a4,800019dc <_ZN12MemAllocator9mem_allocEm+0x88>
            pomPrev->next = newBlk;
    800019b0:	00f73023          	sd	a5,0(a4)
        }else{
            head = newBlk;
        }

            newBlk->next = pom->next;
    800019b4:	00053703          	ld	a4,0(a0)
    800019b8:	00e7b023          	sd	a4,0(a5)
            pom->next = nullptr;
    800019bc:	00053023          	sd	zero,0(a0)
            pom->size = size;
    800019c0:	00b53423          	sd	a1,8(a0)
        }else{
            head = pom->next;
        }
        pom->next = nullptr;
    }
    return (uint64*)pom + sizeof(freeMem);
    800019c4:	08050513          	addi	a0,a0,128
}
    800019c8:	00813403          	ld	s0,8(sp)
    800019cc:	01010113          	addi	sp,sp,16
    800019d0:	00008067          	ret
    freeMem* pomPrev = nullptr;
    800019d4:	00000713          	li	a4,0
    800019d8:	fbdff06f          	j	80001994 <_ZN12MemAllocator9mem_allocEm+0x40>
            head = newBlk;
    800019dc:	00f6b023          	sd	a5,0(a3)
    800019e0:	fd5ff06f          	j	800019b4 <_ZN12MemAllocator9mem_allocEm+0x60>
        if(pomPrev){
    800019e4:	00070a63          	beqz	a4,800019f8 <_ZN12MemAllocator9mem_allocEm+0xa4>
            pomPrev->next = pom->next;
    800019e8:	00053783          	ld	a5,0(a0)
    800019ec:	00f73023          	sd	a5,0(a4)
        pom->next = nullptr;
    800019f0:	00053023          	sd	zero,0(a0)
    800019f4:	fd1ff06f          	j	800019c4 <_ZN12MemAllocator9mem_allocEm+0x70>
            head = pom->next;
    800019f8:	00053783          	ld	a5,0(a0)
    800019fc:	00f6b023          	sd	a5,0(a3)
    80001a00:	ff1ff06f          	j	800019f0 <_ZN12MemAllocator9mem_allocEm+0x9c>

0000000080001a04 <_ZN12MemAllocator8mem_freeEPv>:

int MemAllocator::mem_free(void *pointer) {
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00813423          	sd	s0,8(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    if((uint64*)HEAP_START_ADDR > (uint64*)pointer || (uint64*)HEAP_END_ADDR < (uint64*)pointer ){
    80001a10:	00009797          	auipc	a5,0x9
    80001a14:	9907b783          	ld	a5,-1648(a5) # 8000a3a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a18:	0007b783          	ld	a5,0(a5)
    80001a1c:	0ef5e063          	bltu	a1,a5,80001afc <_ZN12MemAllocator8mem_freeEPv+0xf8>
    80001a20:	00009797          	auipc	a5,0x9
    80001a24:	9a07b783          	ld	a5,-1632(a5) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a28:	0007b783          	ld	a5,0(a5)
    80001a2c:	0cb7ec63          	bltu	a5,a1,80001b04 <_ZN12MemAllocator8mem_freeEPv+0x100>
        return -1;
    }

    freeMem* cur;
    if(!head || (uint64*)head > (uint64*)pointer){
    80001a30:	00053683          	ld	a3,0(a0)
    80001a34:	06068063          	beqz	a3,80001a94 <_ZN12MemAllocator8mem_freeEPv+0x90>
    80001a38:	06d5f463          	bgeu	a1,a3,80001aa0 <_ZN12MemAllocator8mem_freeEPv+0x9c>
            cur = cur->next;
        }
        cur = pom;
    }

    freeMem* newBlk = (freeMem*)((uint64*)pointer - sizeof(freeMem));
    80001a3c:	f8058793          	addi	a5,a1,-128
        cur = nullptr;
    80001a40:	00000713          	li	a4,0
    if(cur){
        newBlk->next = cur->next;
        cur->next  = newBlk;
    }else{
        newBlk->next = head;
    80001a44:	f8d5b023          	sd	a3,-128(a1)
        head = newBlk;
    80001a48:	00f53023          	sd	a5,0(a0)
    }

    if(cur){
    80001a4c:	02070063          	beqz	a4,80001a6c <_ZN12MemAllocator8mem_freeEPv+0x68>
        if(((uint64*)cur + cur->size*MEM_BLOCK_SIZE) == (uint64*)cur->next)
    80001a50:	00873503          	ld	a0,8(a4)
    80001a54:	00951693          	slli	a3,a0,0x9
    80001a58:	00d706b3          	add	a3,a4,a3
    80001a5c:	00073603          	ld	a2,0(a4)
    80001a60:	06c68863          	beq	a3,a2,80001ad0 <_ZN12MemAllocator8mem_freeEPv+0xcc>
        cur->size = cur->size + cur->next->size;
        cur->next = cur->next->next;
    80001a64:	00063683          	ld	a3,0(a2)
    80001a68:	00d73023          	sd	a3,0(a4)
    }
    if(newBlk->next){
    80001a6c:	f805b703          	ld	a4,-128(a1)
    80001a70:	08070e63          	beqz	a4,80001b0c <_ZN12MemAllocator8mem_freeEPv+0x108>
        if(((uint64*)newBlk + newBlk->size*MEM_BLOCK_SIZE) == (uint64*)newBlk->next){
    80001a74:	f885b683          	ld	a3,-120(a1)
    80001a78:	00969613          	slli	a2,a3,0x9
    80001a7c:	00c787b3          	add	a5,a5,a2
    80001a80:	06f70063          	beq	a4,a5,80001ae0 <_ZN12MemAllocator8mem_freeEPv+0xdc>
            newBlk->size = newBlk->size + newBlk->next->size;
            newBlk->next = newBlk->next->next;
        }
    }

    return 0;
    80001a84:	00000513          	li	a0,0
}
    80001a88:	00813403          	ld	s0,8(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret
    freeMem* newBlk = (freeMem*)((uint64*)pointer - sizeof(freeMem));
    80001a94:	f8058793          	addi	a5,a1,-128
        cur = nullptr;
    80001a98:	00068713          	mv	a4,a3
    80001a9c:	fa9ff06f          	j	80001a44 <_ZN12MemAllocator8mem_freeEPv+0x40>
        cur = head;
    80001aa0:	00068793          	mv	a5,a3
        freeMem* pom = nullptr;
    80001aa4:	00000713          	li	a4,0
        while((uint64*)cur < (uint64*)pointer){
    80001aa8:	00b7f863          	bgeu	a5,a1,80001ab8 <_ZN12MemAllocator8mem_freeEPv+0xb4>
            pom = cur;
    80001aac:	00078713          	mv	a4,a5
            cur = cur->next;
    80001ab0:	0007b783          	ld	a5,0(a5)
        while((uint64*)cur < (uint64*)pointer){
    80001ab4:	ff5ff06f          	j	80001aa8 <_ZN12MemAllocator8mem_freeEPv+0xa4>
    freeMem* newBlk = (freeMem*)((uint64*)pointer - sizeof(freeMem));
    80001ab8:	f8058793          	addi	a5,a1,-128
    if(cur){
    80001abc:	f80704e3          	beqz	a4,80001a44 <_ZN12MemAllocator8mem_freeEPv+0x40>
        newBlk->next = cur->next;
    80001ac0:	00073683          	ld	a3,0(a4)
    80001ac4:	f8d5b023          	sd	a3,-128(a1)
        cur->next  = newBlk;
    80001ac8:	00f73023          	sd	a5,0(a4)
    80001acc:	f81ff06f          	j	80001a4c <_ZN12MemAllocator8mem_freeEPv+0x48>
        cur->size = cur->size + cur->next->size;
    80001ad0:	00863683          	ld	a3,8(a2)
    80001ad4:	00d50533          	add	a0,a0,a3
    80001ad8:	00a73423          	sd	a0,8(a4)
    80001adc:	f89ff06f          	j	80001a64 <_ZN12MemAllocator8mem_freeEPv+0x60>
            newBlk->size = newBlk->size + newBlk->next->size;
    80001ae0:	00873783          	ld	a5,8(a4)
    80001ae4:	00f686b3          	add	a3,a3,a5
    80001ae8:	f8d5b423          	sd	a3,-120(a1)
            newBlk->next = newBlk->next->next;
    80001aec:	00073783          	ld	a5,0(a4)
    80001af0:	f8f5b023          	sd	a5,-128(a1)
    return 0;
    80001af4:	00000513          	li	a0,0
    80001af8:	f91ff06f          	j	80001a88 <_ZN12MemAllocator8mem_freeEPv+0x84>
        return -1;
    80001afc:	fff00513          	li	a0,-1
    80001b00:	f89ff06f          	j	80001a88 <_ZN12MemAllocator8mem_freeEPv+0x84>
    80001b04:	fff00513          	li	a0,-1
    80001b08:	f81ff06f          	j	80001a88 <_ZN12MemAllocator8mem_freeEPv+0x84>
    return 0;
    80001b0c:	00000513          	li	a0,0
    80001b10:	f79ff06f          	j	80001a88 <_ZN12MemAllocator8mem_freeEPv+0x84>

0000000080001b14 <_ZN12MemAllocator11getInstanceEv>:

MemAllocator &MemAllocator::getInstance() {
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00813423          	sd	s0,8(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    static MemAllocator instance;
    return instance;
}
    80001b20:	00009517          	auipc	a0,0x9
    80001b24:	8f050513          	addi	a0,a0,-1808 # 8000a410 <_ZZN12MemAllocator11getInstanceEvE8instance>
    80001b28:	00813403          	ld	s0,8(sp)
    80001b2c:	01010113          	addi	sp,sp,16
    80001b30:	00008067          	ret

0000000080001b34 <_ZN9Scheduler3getEv>:
#include "../h/MemAllocator.hpp"

Elem* Scheduler::head = nullptr;
Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get() {
    80001b34:	fe010113          	addi	sp,sp,-32
    80001b38:	00113c23          	sd	ra,24(sp)
    80001b3c:	00813823          	sd	s0,16(sp)
    80001b40:	00913423          	sd	s1,8(sp)
    80001b44:	01213023          	sd	s2,0(sp)
    80001b48:	02010413          	addi	s0,sp,32
    if(head == nullptr){
    80001b4c:	00009497          	auipc	s1,0x9
    80001b50:	8cc4b483          	ld	s1,-1844(s1) # 8000a418 <_ZN9Scheduler4headE>
    80001b54:	04048a63          	beqz	s1,80001ba8 <_ZN9Scheduler3getEv+0x74>
        return nullptr;
    }
    Elem* e = head;
    head = head->next;
    80001b58:	0084b783          	ld	a5,8(s1)
    80001b5c:	00009717          	auipc	a4,0x9
    80001b60:	8af73e23          	sd	a5,-1860(a4) # 8000a418 <_ZN9Scheduler4headE>
    if(head == nullptr){
    80001b64:	02078c63          	beqz	a5,80001b9c <_ZN9Scheduler3getEv+0x68>
        tail = head;
    }
    TCB* value = e->thread;
    80001b68:	0004b903          	ld	s2,0(s1)
    MemAllocator::getInstance().mem_free(e);
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	fa8080e7          	jalr	-88(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001b74:	00048593          	mv	a1,s1
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	e8c080e7          	jalr	-372(ra) # 80001a04 <_ZN12MemAllocator8mem_freeEPv>
    return value;
}
    80001b80:	00090513          	mv	a0,s2
    80001b84:	01813083          	ld	ra,24(sp)
    80001b88:	01013403          	ld	s0,16(sp)
    80001b8c:	00813483          	ld	s1,8(sp)
    80001b90:	00013903          	ld	s2,0(sp)
    80001b94:	02010113          	addi	sp,sp,32
    80001b98:	00008067          	ret
        tail = head;
    80001b9c:	00009717          	auipc	a4,0x9
    80001ba0:	88f73223          	sd	a5,-1916(a4) # 8000a420 <_ZN9Scheduler4tailE>
    80001ba4:	fc5ff06f          	j	80001b68 <_ZN9Scheduler3getEv+0x34>
        return nullptr;
    80001ba8:	00048913          	mv	s2,s1
    80001bac:	fd5ff06f          	j	80001b80 <_ZN9Scheduler3getEv+0x4c>

0000000080001bb0 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *t) {
    80001bb0:	fe010113          	addi	sp,sp,-32
    80001bb4:	00113c23          	sd	ra,24(sp)
    80001bb8:	00813823          	sd	s0,16(sp)
    80001bbc:	00913423          	sd	s1,8(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    80001bc4:	00050493          	mv	s1,a0

    Elem* e = (Elem*)MemAllocator::getInstance().mem_alloc(sizeof(Elem)/MEM_BLOCK_SIZE + (sizeof(Elem)%MEM_BLOCK_SIZE > 0 ? 1:0));
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	f4c080e7          	jalr	-180(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001bd0:	00100593          	li	a1,1
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	d80080e7          	jalr	-640(ra) # 80001954 <_ZN12MemAllocator9mem_allocEm>
    e->thread = t;
    80001bdc:	00953023          	sd	s1,0(a0)
    if(tail == nullptr){
    80001be0:	00009797          	auipc	a5,0x9
    80001be4:	8407b783          	ld	a5,-1984(a5) # 8000a420 <_ZN9Scheduler4tailE>
    80001be8:	02078463          	beqz	a5,80001c10 <_ZN9Scheduler3putEP3TCB+0x60>
        head = e;
        tail = head;
        e->next = nullptr;
    }else{
        tail->next = e;
    80001bec:	00a7b423          	sd	a0,8(a5)
        tail = e;
    80001bf0:	00009797          	auipc	a5,0x9
    80001bf4:	82a7b823          	sd	a0,-2000(a5) # 8000a420 <_ZN9Scheduler4tailE>
        e->next = nullptr;
    80001bf8:	00053423          	sd	zero,8(a0)
    }

}
    80001bfc:	01813083          	ld	ra,24(sp)
    80001c00:	01013403          	ld	s0,16(sp)
    80001c04:	00813483          	ld	s1,8(sp)
    80001c08:	02010113          	addi	sp,sp,32
    80001c0c:	00008067          	ret
        head = e;
    80001c10:	00009797          	auipc	a5,0x9
    80001c14:	80878793          	addi	a5,a5,-2040 # 8000a418 <_ZN9Scheduler4headE>
    80001c18:	00a7b023          	sd	a0,0(a5)
        tail = head;
    80001c1c:	00a7b423          	sd	a0,8(a5)
        e->next = nullptr;
    80001c20:	00053423          	sd	zero,8(a0)
    80001c24:	fd9ff06f          	j	80001bfc <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080001c28 <_Z4initv>:
void userMain();


extern "C" void supervisorTrap();

void init(){
    80001c28:	fe010113          	addi	sp,sp,-32
    80001c2c:	00113c23          	sd	ra,24(sp)
    80001c30:	00813823          	sd	s0,16(sp)
    80001c34:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrw stvec, %0"::"r"((uint64)(&supervisorTrap) | 1));
    80001c38:	00008797          	auipc	a5,0x8
    80001c3c:	7707b783          	ld	a5,1904(a5) # 8000a3a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c40:	0017e793          	ori	a5,a5,1
    80001c44:	10579073          	csrw	stvec,a5
    changeToUserMode();
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	964080e7          	jalr	-1692(ra) # 800015ac <_Z16changeToUserModev>
    mem_init();
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	784080e7          	jalr	1924(ra) # 800013d4 <_Z8mem_initv>
    TCB* idle_nit;
    thread_create(&idle_nit, nullptr, nullptr);
    80001c58:	00000613          	li	a2,0
    80001c5c:	00000593          	li	a1,0
    80001c60:	fe840513          	addi	a0,s0,-24
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	790080e7          	jalr	1936(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = idle_nit;
    80001c6c:	00008797          	auipc	a5,0x8
    80001c70:	74c7b783          	ld	a5,1868(a5) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c74:	fe843703          	ld	a4,-24(s0)
    80001c78:	00e7b023          	sd	a4,0(a5)
}
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	02010113          	addi	sp,sp,32
    80001c88:	00008067          	ret

0000000080001c8c <main>:


void main(){
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00113423          	sd	ra,8(sp)
    80001c94:	00813023          	sd	s0,0(sp)
    80001c98:	01010413          	addi	s0,sp,16
    init();
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	f8c080e7          	jalr	-116(ra) # 80001c28 <_Z4initv>
    userMain();
    80001ca4:	00003097          	auipc	ra,0x3
    80001ca8:	41c080e7          	jalr	1052(ra) # 800050c0 <_Z8userMainv>
    while(Scheduler::get()){
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	e88080e7          	jalr	-376(ra) # 80001b34 <_ZN9Scheduler3getEv>
    80001cb4:	00050863          	beqz	a0,80001cc4 <main+0x38>
        thread_dispatch();
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	7e0080e7          	jalr	2016(ra) # 80001498 <_Z15thread_dispatchv>
    while(Scheduler::get()){
    80001cc0:	fedff06f          	j	80001cac <main+0x20>
    }
    80001cc4:	00813083          	ld	ra,8(sp)
    80001cc8:	00013403          	ld	s0,0(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <_ZN6Thread7wrapperEPv>:
    myHandle = nullptr;
    body = wrapper;
    arg = this;
}

void Thread::wrapper(void *arg) {
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00113423          	sd	ra,8(sp)
    80001cdc:	00813023          	sd	s0,0(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    Thread* thread = (Thread*) arg;
    thread->run();
    80001ce4:	00053783          	ld	a5,0(a0)
    80001ce8:	0107b783          	ld	a5,16(a5)
    80001cec:	000780e7          	jalr	a5
}
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	00008797          	auipc	a5,0x8
    80001d14:	4c878793          	addi	a5,a5,1224 # 8000a1d8 <_ZTV9Semaphore+0x10>
    80001d18:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d1c:	00853503          	ld	a0,8(a0)
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	7ec080e7          	jalr	2028(ra) # 8000150c <_Z9sem_closeP11MySemaphore>
}
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_Znwm>:
void *operator new(size_t size) {
    80001d38:	ff010113          	addi	sp,sp,-16
    80001d3c:	00113423          	sd	ra,8(sp)
    80001d40:	00813023          	sd	s0,0(sp)
    80001d44:	01010413          	addi	s0,sp,16
    void* ptr = mem_alloc(size);
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	624080e7          	jalr	1572(ra) # 8000136c <_Z9mem_allocm>
}
    80001d50:	00813083          	ld	ra,8(sp)
    80001d54:	00013403          	ld	s0,0(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_Znam>:
void *operator new[](size_t size) {
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    void* ptr = mem_alloc(size);
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	5fc080e7          	jalr	1532(ra) # 8000136c <_Z9mem_allocm>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZdlPv>:
void operator delete(void *pointer) {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    mem_free(pointer);
    80001d98:	fffff097          	auipc	ra,0xfffff
    80001d9c:	610080e7          	jalr	1552(ra) # 800013a8 <_Z8mem_freePv>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001db0:	fe010113          	addi	sp,sp,-32
    80001db4:	00113c23          	sd	ra,24(sp)
    80001db8:	00813823          	sd	s0,16(sp)
    80001dbc:	00913423          	sd	s1,8(sp)
    80001dc0:	02010413          	addi	s0,sp,32
    80001dc4:	00050493          	mv	s1,a0
}
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	f38080e7          	jalr	-200(ra) # 80001d00 <_ZN9SemaphoreD1Ev>
    80001dd0:	00048513          	mv	a0,s1
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	fb4080e7          	jalr	-76(ra) # 80001d88 <_ZdlPv>
    80001ddc:	01813083          	ld	ra,24(sp)
    80001de0:	01013403          	ld	s0,16(sp)
    80001de4:	00813483          	ld	s1,8(sp)
    80001de8:	02010113          	addi	sp,sp,32
    80001dec:	00008067          	ret

0000000080001df0 <_ZdaPv>:
void operator delete[](void *pointer) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    mem_free(pointer);
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	5a8080e7          	jalr	1448(ra) # 800013a8 <_Z8mem_freePv>
}
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00813423          	sd	s0,8(sp)
    80001e20:	01010413          	addi	s0,sp,16
    80001e24:	00008797          	auipc	a5,0x8
    80001e28:	38c78793          	addi	a5,a5,908 # 8000a1b0 <_ZTV6Thread+0x10>
    80001e2c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001e30:	00053423          	sd	zero,8(a0)
}
    80001e34:	00813403          	ld	s0,8(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN6Thread5startEv>:
int Thread::start() {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body,arg);
    80001e50:	01853603          	ld	a2,24(a0)
    80001e54:	01053583          	ld	a1,16(a0)
    80001e58:	00850513          	addi	a0,a0,8
    80001e5c:	fffff097          	auipc	ra,0xfffff
    80001e60:	598080e7          	jalr	1432(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001e64:	00813083          	ld	ra,8(sp)
    80001e68:	00013403          	ld	s0,0(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00113423          	sd	ra,8(sp)
    80001e7c:	00813023          	sd	s0,0(sp)
    80001e80:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001e84:	00853503          	ld	a0,8(a0)
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	630080e7          	jalr	1584(ra) # 800014b8 <_Z11thread_joinP3TCB>
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001ea0:	fe010113          	addi	sp,sp,-32
    80001ea4:	00113c23          	sd	ra,24(sp)
    80001ea8:	00813823          	sd	s0,16(sp)
    80001eac:	00913423          	sd	s1,8(sp)
    80001eb0:	02010413          	addi	s0,sp,32
    80001eb4:	00050493          	mv	s1,a0
    80001eb8:	00008797          	auipc	a5,0x8
    80001ebc:	2f878793          	addi	a5,a5,760 # 8000a1b0 <_ZTV6Thread+0x10>
    80001ec0:	00f53023          	sd	a5,0(a0)
    join();
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	fb0080e7          	jalr	-80(ra) # 80001e74 <_ZN6Thread4joinEv>
    delete myHandle;
    80001ecc:	0084b483          	ld	s1,8(s1)
    80001ed0:	02048263          	beqz	s1,80001ef4 <_ZN6ThreadD1Ev+0x54>
        MemAllocator::getInstance().mem_free(stack);
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	c40080e7          	jalr	-960(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80001edc:	0084b583          	ld	a1,8(s1)
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	b24080e7          	jalr	-1244(ra) # 80001a04 <_ZN12MemAllocator8mem_freeEPv>
    80001ee8:	00048513          	mv	a0,s1
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	e9c080e7          	jalr	-356(ra) # 80001d88 <_ZdlPv>
}
    80001ef4:	01813083          	ld	ra,24(sp)
    80001ef8:	01013403          	ld	s0,16(sp)
    80001efc:	00813483          	ld	s1,8(sp)
    80001f00:	02010113          	addi	sp,sp,32
    80001f04:	00008067          	ret

0000000080001f08 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f08:	fe010113          	addi	sp,sp,-32
    80001f0c:	00113c23          	sd	ra,24(sp)
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	02010413          	addi	s0,sp,32
    80001f1c:	00050493          	mv	s1,a0
}
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	f80080e7          	jalr	-128(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	e5c080e7          	jalr	-420(ra) # 80001d88 <_ZdlPv>
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	02010113          	addi	sp,sp,32
    80001f44:	00008067          	ret

0000000080001f48 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	540080e7          	jalr	1344(ra) # 80001498 <_Z15thread_dispatchv>
}
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	610080e7          	jalr	1552(ra) # 80001590 <_Z10time_sleepm>
}
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    80001fa4:	00008797          	auipc	a5,0x8
    80001fa8:	20c78793          	addi	a5,a5,524 # 8000a1b0 <_ZTV6Thread+0x10>
    80001fac:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001fb0:	00053423          	sd	zero,8(a0)
    body = wrapper;
    80001fb4:	00000797          	auipc	a5,0x0
    80001fb8:	d2078793          	addi	a5,a5,-736 # 80001cd4 <_ZN6Thread7wrapperEPv>
    80001fbc:	00f53823          	sd	a5,16(a0)
    arg = this;
    80001fc0:	00a53c23          	sd	a0,24(a0)
}
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    80001fe0:	00008797          	auipc	a5,0x8
    80001fe4:	1f878793          	addi	a5,a5,504 # 8000a1d8 <_ZTV9Semaphore+0x10>
    80001fe8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001fec:	00850513          	addi	a0,a0,8
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	4ec080e7          	jalr	1260(ra) # 800014dc <_Z8sem_openPP11MySemaphorej>
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    int result = sem_wait(myHandle);
    80002018:	00853503          	ld	a0,8(a0)
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	51c080e7          	jalr	1308(ra) # 80001538 <_Z8sem_waitP11MySemaphore>
    return result;
}
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
    int result = sem_signal(myHandle);
    80002044:	00853503          	ld	a0,8(a0)
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	51c080e7          	jalr	1308(ra) # 80001564 <_Z10sem_signalP11MySemaphore>
    return result;
}
    80002050:	00813083          	ld	ra,8(sp)
    80002054:	00013403          	ld	s0,0(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN7Console4getcEv>:

char Console::getc() {
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00113423          	sd	ra,8(sp)
    80002068:	00813023          	sd	s0,0(sp)
    8000206c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	55c080e7          	jalr	1372(ra) # 800015cc <_Z4getcv>
}
    80002078:	00813083          	ld	ra,8(sp)
    8000207c:	00013403          	ld	s0,0(sp)
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret

0000000080002088 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00113423          	sd	ra,8(sp)
    80002090:	00813023          	sd	s0,0(sp)
    80002094:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002098:	fffff097          	auipc	ra,0xfffff
    8000209c:	55c080e7          	jalr	1372(ra) # 800015f4 <_Z4putcc>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN6Thread3runEv>:

    static  int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	00813403          	ld	s0,8(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/MySemaphore.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie() {
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00813423          	sd	s0,8(sp)
    800020d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800020d4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800020d8:	10200073          	sret
}
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <_ZN5Riscv10handleTrapEv>:

void Riscv::handleTrap() {
    800020e8:	fd010113          	addi	sp,sp,-48
    800020ec:	02113423          	sd	ra,40(sp)
    800020f0:	02813023          	sd	s0,32(sp)
    800020f4:	00913c23          	sd	s1,24(sp)
    800020f8:	01213823          	sd	s2,16(sp)
    800020fc:	01313423          	sd	s3,8(sp)
    80002100:	01413023          	sd	s4,0(sp)
    80002104:	03010413          	addi	s0,sp,48

    uint64 reg1;
    uint64 reg2;
    uint64 reg3;
    uint64 reg4;
    __asm__ volatile("mv %0, a1":"=r"(reg1));
    80002108:	00058993          	mv	s3,a1
    __asm__ volatile("mv %0, a2":"=r"(reg2));
    8000210c:	00060a13          	mv	s4,a2
    __asm__ volatile("mv %0, a3":"=r"(reg3));
    80002110:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4":"=r"(reg4));
    80002114:	00070693          	mv	a3,a4

    uint64 mypc;
    __asm__ volatile("csrr %0,sepc":"=r"(mypc));
    80002118:	141024f3          	csrr	s1,sepc
    uint64 cause;
    __asm__ volatile("csrr %0,scause":"=r"(cause));
    8000211c:	14202973          	csrr	s2,scause
    uint64 code;
    __asm__ volatile("mv %0,a0":"=r"(code));
    80002120:	00050793          	mv	a5,a0
    uint64 status;
    if(cause == 0x08 || cause == 0x09) {
    80002124:	ff890593          	addi	a1,s2,-8
    80002128:	00100713          	li	a4,1
    8000212c:	20b76063          	bltu	a4,a1,8000232c <_ZN5Riscv10handleTrapEv+0x244>
        __asm__ volatile("csrr %0,sstatus":"=r"(status));
    80002130:	10002973          	csrr	s2,sstatus

        if (code == 0x01) {
    80002134:	08e78a63          	beq	a5,a4,800021c8 <_ZN5Riscv10handleTrapEv+0xe0>
            //mem_alloc
            void* ptr = MemAllocator::getInstance().mem_alloc(reg1);
            __asm__ volatile("mv a0,%0"::"r"(ptr));
        } else if (code == 0x02) {
    80002138:	00200713          	li	a4,2
    8000213c:	0ce78c63          	beq	a5,a4,80002214 <_ZN5Riscv10handleTrapEv+0x12c>
            //mem_free
            int result = MemAllocator::getInstance().mem_free((void*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        }else if(code == 0x03){
    80002140:	00300713          	li	a4,3
    80002144:	0ee78663          	beq	a5,a4,80002230 <_ZN5Riscv10handleTrapEv+0x148>
            MemAllocator::getInstance().mem_init();
        } else if(code == 0x11) {
    80002148:	01100713          	li	a4,17
    8000214c:	0ee78c63          	beq	a5,a4,80002244 <_ZN5Riscv10handleTrapEv+0x15c>
            }else{
                r = 0;
            }
            __asm__ volatile("mv a0,%0"::"r"(r));

        } else if(code == 0x12) {
    80002150:	01200713          	li	a4,18
    80002154:	10e78c63          	beq	a5,a4,8000226c <_ZN5Riscv10handleTrapEv+0x184>
            //thread_exit
            TCB::running->setFinished(true);
            TCB::dispatch();

        } else if(code == 0x13) {
    80002158:	01300713          	li	a4,19
    8000215c:	12e78863          	beq	a5,a4,8000228c <_ZN5Riscv10handleTrapEv+0x1a4>
            //thread_dispatch
            TCB::dispatch();

        } else if(code == 0x14) {
    80002160:	01400713          	li	a4,20
    80002164:	12e78a63          	beq	a5,a4,80002298 <_ZN5Riscv10handleTrapEv+0x1b0>
            //thread_join
            TCB* handle = (TCB*)reg1;
            TCB::join(handle);

        } else if(code == 0x21) {
    80002168:	02100713          	li	a4,33
    8000216c:	12e78e63          	beq	a5,a4,800022a8 <_ZN5Riscv10handleTrapEv+0x1c0>
            }else{
                result = 0;
            }
            __asm__ volatile("mv a0,%0"::"r"(result));

        } else if(code == 0x22) {
    80002170:	02200713          	li	a4,34
    80002174:	14e78e63          	beq	a5,a4,800022d0 <_ZN5Riscv10handleTrapEv+0x1e8>
            //sem_close
            int result = MySemaphore::close((MySemaphore*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        } else if(code == 0x23) {
    80002178:	02300713          	li	a4,35
    8000217c:	16e78463          	beq	a5,a4,800022e4 <_ZN5Riscv10handleTrapEv+0x1fc>
            //sem_wait
            int result = MySemaphore::wait((MySemaphore*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        } else if(code == 0x24) {
    80002180:	02400713          	li	a4,36
    80002184:	16e78a63          	beq	a5,a4,800022f8 <_ZN5Riscv10handleTrapEv+0x210>
            //sem_signal
            int result = MySemaphore::signal((MySemaphore*)reg1);
            __asm__ volatile("mv a0,%0"::"r"(result));
        } else if(code == 0x31) {
    80002188:	03100713          	li	a4,49
    8000218c:	04e78a63          	beq	a5,a4,800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            //time_sleep
        } else if(code == 0x41) {
    80002190:	04100713          	li	a4,65
    80002194:	16e78c63          	beq	a5,a4,8000230c <_ZN5Riscv10handleTrapEv+0x224>
            //getc
            char c = __getc();
            __asm__ volatile("mv a0, %0"::"r"(c));
        } else if(code == 0x42) {
    80002198:	04200713          	li	a4,66
    8000219c:	18e78063          	beq	a5,a4,8000231c <_ZN5Riscv10handleTrapEv+0x234>
            //putc
            char c = (char)reg1;
            __putc(c);
        } else if(code == 0x43) {
    800021a0:	04300713          	li	a4,67
    800021a4:	02e79e63          	bne	a5,a4,800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            __asm__ volatile("csrw sstatus, %0"::"r"(status));
    800021a8:	10091073          	csrw	sstatus,s2
            __asm__ volatile("csrc sstatus, %0"::"r"(1<<8));
    800021ac:	10000793          	li	a5,256
    800021b0:	1007b073          	csrc	sstatus,a5
            __asm__ volatile("csrw sepc, %0"::"r"(mypc + 4));
    800021b4:	00448493          	addi	s1,s1,4
    800021b8:	14149073          	csrw	sepc,s1
            __asm__ volatile("csrc sip, %0"::"r"(1<<1));
    800021bc:	00200793          	li	a5,2
    800021c0:	1447b073          	csrc	sip,a5
            return;
    800021c4:	0300006f          	j	800021f4 <_ZN5Riscv10handleTrapEv+0x10c>
            void* ptr = MemAllocator::getInstance().mem_alloc(reg1);
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	94c080e7          	jalr	-1716(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    800021d0:	00098593          	mv	a1,s3
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	780080e7          	jalr	1920(ra) # 80001954 <_ZN12MemAllocator9mem_allocEm>
            __asm__ volatile("mv a0,%0"::"r"(ptr));
    800021dc:	00050513          	mv	a0,a0
        }
        __asm__ volatile("csrw sstatus,%0"::"r"(status));
    800021e0:	10091073          	csrw	sstatus,s2
        __asm__ volatile("csrw sepc,%0"::"r"(mypc + 4));
    800021e4:	00448493          	addi	s1,s1,4
    800021e8:	14149073          	csrw	sepc,s1
        __asm__ volatile("csrc sip, %0"::"r"(1<<1));
    800021ec:	00200793          	li	a5,2
    800021f0:	1447b073          	csrc	sip,a5
    } else {
        printString("Greska: ");
        printInt(cause);
        printString(" ");
    }
}
    800021f4:	02813083          	ld	ra,40(sp)
    800021f8:	02013403          	ld	s0,32(sp)
    800021fc:	01813483          	ld	s1,24(sp)
    80002200:	01013903          	ld	s2,16(sp)
    80002204:	00813983          	ld	s3,8(sp)
    80002208:	00013a03          	ld	s4,0(sp)
    8000220c:	03010113          	addi	sp,sp,48
    80002210:	00008067          	ret
            int result = MemAllocator::getInstance().mem_free((void*)reg1);
    80002214:	00000097          	auipc	ra,0x0
    80002218:	900080e7          	jalr	-1792(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    8000221c:	00098593          	mv	a1,s3
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	7e4080e7          	jalr	2020(ra) # 80001a04 <_ZN12MemAllocator8mem_freeEPv>
            __asm__ volatile("mv a0,%0"::"r"(result));
    80002228:	00050513          	mv	a0,a0
    8000222c:	fb5ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            MemAllocator::getInstance().mem_init();
    80002230:	00000097          	auipc	ra,0x0
    80002234:	8e4080e7          	jalr	-1820(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	6cc080e7          	jalr	1740(ra) # 80001904 <_ZN12MemAllocator8mem_initEv>
    80002240:	fa1ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            TCB* res = TCB::createThread((TCB**)reg1,(TCB::Body)reg2,(void*)reg3,(uint64*)reg4);
    80002244:	000a0593          	mv	a1,s4
    80002248:	00098513          	mv	a0,s3
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	1a4080e7          	jalr	420(ra) # 800023f0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>
            if(res == nullptr){
    80002254:	00050863          	beqz	a0,80002264 <_ZN5Riscv10handleTrapEv+0x17c>
                r = 0;
    80002258:	00000793          	li	a5,0
            __asm__ volatile("mv a0,%0"::"r"(r));
    8000225c:	00078513          	mv	a0,a5
    80002260:	f81ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
                r = -1;
    80002264:	fff00793          	li	a5,-1
    80002268:	ff5ff06f          	j	8000225c <_ZN5Riscv10handleTrapEv+0x174>
            TCB::running->setFinished(true);
    8000226c:	00008797          	auipc	a5,0x8
    80002270:	14c7b783          	ld	a5,332(a5) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002274:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value){finished = value;}
    80002278:	00100713          	li	a4,1
    8000227c:	02e78023          	sb	a4,32(a5)
            TCB::dispatch();
    80002280:	00000097          	auipc	ra,0x0
    80002284:	250080e7          	jalr	592(ra) # 800024d0 <_ZN3TCB8dispatchEv>
    80002288:	f59ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            TCB::dispatch();
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	244080e7          	jalr	580(ra) # 800024d0 <_ZN3TCB8dispatchEv>
    80002294:	f4dff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            TCB::join(handle);
    80002298:	00098513          	mv	a0,s3
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	2a4080e7          	jalr	676(ra) # 80002540 <_ZN3TCB4joinEPS_>
    800022a4:	f3dff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            MySemaphore::open((MySemaphore**)reg2, (int)reg1);
    800022a8:	0009859b          	sext.w	a1,s3
    800022ac:	000a0513          	mv	a0,s4
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	368080e7          	jalr	872(ra) # 80001618 <_ZN11MySemaphore4openEPPS_i>
            if(!h){
    800022b8:	000a1863          	bnez	s4,800022c8 <_ZN5Riscv10handleTrapEv+0x1e0>
                result = -1;
    800022bc:	fff00793          	li	a5,-1
            __asm__ volatile("mv a0,%0"::"r"(result));
    800022c0:	00078513          	mv	a0,a5
    800022c4:	f1dff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
                result = 0;
    800022c8:	00000793          	li	a5,0
    800022cc:	ff5ff06f          	j	800022c0 <_ZN5Riscv10handleTrapEv+0x1d8>
            int result = MySemaphore::close((MySemaphore*)reg1);
    800022d0:	00098513          	mv	a0,s3
    800022d4:	fffff097          	auipc	ra,0xfffff
    800022d8:	45c080e7          	jalr	1116(ra) # 80001730 <_ZN11MySemaphore5closeEPS_>
            __asm__ volatile("mv a0,%0"::"r"(result));
    800022dc:	00050513          	mv	a0,a0
    800022e0:	f01ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            int result = MySemaphore::wait((MySemaphore*)reg1);
    800022e4:	00098513          	mv	a0,s3
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	590080e7          	jalr	1424(ra) # 80001878 <_ZN11MySemaphore4waitEPS_>
            __asm__ volatile("mv a0,%0"::"r"(result));
    800022f0:	00050513          	mv	a0,a0
    800022f4:	eedff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            int result = MySemaphore::signal((MySemaphore*)reg1);
    800022f8:	00098513          	mv	a0,s3
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	4b0080e7          	jalr	1200(ra) # 800017ac <_ZN11MySemaphore6signalEPS_>
            __asm__ volatile("mv a0,%0"::"r"(result));
    80002304:	00050513          	mv	a0,a0
    80002308:	ed9ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            char c = __getc();
    8000230c:	00006097          	auipc	ra,0x6
    80002310:	a2c080e7          	jalr	-1492(ra) # 80007d38 <__getc>
            __asm__ volatile("mv a0, %0"::"r"(c));
    80002314:	00050513          	mv	a0,a0
    80002318:	ec9ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
            __putc(c);
    8000231c:	0ff9f513          	andi	a0,s3,255
    80002320:	00006097          	auipc	ra,0x6
    80002324:	9dc080e7          	jalr	-1572(ra) # 80007cfc <__putc>
    80002328:	eb9ff06f          	j	800021e0 <_ZN5Riscv10handleTrapEv+0xf8>
        printString("Greska: ");
    8000232c:	00006517          	auipc	a0,0x6
    80002330:	cf450513          	addi	a0,a0,-780 # 80008020 <CONSOLE_STATUS+0x10>
    80002334:	00002097          	auipc	ra,0x2
    80002338:	6c4080e7          	jalr	1732(ra) # 800049f8 <_Z11printStringPKc>
        printInt(cause);
    8000233c:	00000613          	li	a2,0
    80002340:	00a00593          	li	a1,10
    80002344:	0009051b          	sext.w	a0,s2
    80002348:	00003097          	auipc	ra,0x3
    8000234c:	860080e7          	jalr	-1952(ra) # 80004ba8 <_Z8printIntiii>
        printString(" ");
    80002350:	00006517          	auipc	a0,0x6
    80002354:	ce050513          	addi	a0,a0,-800 # 80008030 <CONSOLE_STATUS+0x20>
    80002358:	00002097          	auipc	ra,0x2
    8000235c:	6a0080e7          	jalr	1696(ra) # 800049f8 <_Z11printStringPKc>
    80002360:	e95ff06f          	j	800021f4 <_ZN5Riscv10handleTrapEv+0x10c>

0000000080002364 <_ZN5Riscv11handleTimerEv>:

void Riscv::handleTimer() {
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrc sip, %0"::"r"(1<<1));
    80002370:	00200793          	li	a5,2
    80002374:	1447b073          	csrc	sip,a5
}
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN5Riscv13handleConsoleEv>:

void Riscv::handleConsole() {
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    console_handler();
    80002394:	00006097          	auipc	ra,0x6
    80002398:	9dc080e7          	jalr	-1572(ra) # 80007d70 <console_handler>
}
    8000239c:	00813083          	ld	ra,8(sp)
    800023a0:	00013403          	ld	s0,0(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <_ZN3TCB13threadWrapperEv>:
    while(!handle->isFinished()){
        TCB::dispatch();
    }
}

void TCB::threadWrapper() {
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00113423          	sd	ra,8(sp)
    800023b4:	00813023          	sd	s0,0(sp)
    800023b8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	d0c080e7          	jalr	-756(ra) # 800020c8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800023c4:	00008797          	auipc	a5,0x8
    800023c8:	0647b783          	ld	a5,100(a5) # 8000a428 <_ZN3TCB7runningE>
    800023cc:	0007b703          	ld	a4,0(a5)
    800023d0:	0287b503          	ld	a0,40(a5)
    800023d4:	000700e7          	jalr	a4
    thread_exit();
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	098080e7          	jalr	152(ra) # 80001470 <_Z11thread_exitv>
}
    800023e0:	00813083          	ld	ra,8(sp)
    800023e4:	00013403          	ld	s0,0(sp)
    800023e8:	01010113          	addi	sp,sp,16
    800023ec:	00008067          	ret

00000000800023f0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>:
TCB *TCB::createThread(TCB **handle, TCB::Body body, void *arg, uint64 *stack_space) {
    800023f0:	fc010113          	addi	sp,sp,-64
    800023f4:	02113c23          	sd	ra,56(sp)
    800023f8:	02813823          	sd	s0,48(sp)
    800023fc:	02913423          	sd	s1,40(sp)
    80002400:	03213023          	sd	s2,32(sp)
    80002404:	01313c23          	sd	s3,24(sp)
    80002408:	01413823          	sd	s4,16(sp)
    8000240c:	01513423          	sd	s5,8(sp)
    80002410:	04010413          	addi	s0,sp,64
    80002414:	00050993          	mv	s3,a0
    80002418:	00058a93          	mv	s5,a1
    8000241c:	00060a13          	mv	s4,a2
    80002420:	00068913          	mv	s2,a3
    TCB* nt = (TCB*)MemAllocator::getInstance().mem_alloc(sizeof(TCB)/MEM_BLOCK_SIZE + (sizeof(TCB)%MEM_BLOCK_SIZE > 0 ? 1:0));
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	6f0080e7          	jalr	1776(ra) # 80001b14 <_ZN12MemAllocator11getInstanceEv>
    8000242c:	00100593          	li	a1,1
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	524080e7          	jalr	1316(ra) # 80001954 <_ZN12MemAllocator9mem_allocEm>
    80002438:	00050493          	mv	s1,a0
    nt->body = body;
    8000243c:	01553023          	sd	s5,0(a0)
    nt->arg = arg;
    80002440:	03453423          	sd	s4,40(a0)
    nt->stack = stack_space;
    80002444:	01253423          	sd	s2,8(a0)
    80002448:	02050023          	sb	zero,32(a0)
    void setBlocked(bool value){blocked = value;}
    8000244c:	02050123          	sb	zero,34(a0)
    void setClosed(bool value){closed = value;}
    80002450:	020500a3          	sb	zero,33(a0)
    nt->context = {(uint64)&threadWrapper,stack_space != nullptr ? (uint64)&stack_space[DEFAULT_STACK_SIZE]:0};
    80002454:	04090a63          	beqz	s2,800024a8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xb8>
    80002458:	000086b7          	lui	a3,0x8
    8000245c:	00d90933          	add	s2,s2,a3
    80002460:	00000797          	auipc	a5,0x0
    80002464:	f4c78793          	addi	a5,a5,-180 # 800023ac <_ZN3TCB13threadWrapperEv>
    80002468:	00f4b823          	sd	a5,16(s1)
    8000246c:	0124bc23          	sd	s2,24(s1)
    *handle = nt;
    80002470:	0099b023          	sd	s1,0(s3)
    Scheduler::put(nt);
    80002474:	00048513          	mv	a0,s1
    80002478:	fffff097          	auipc	ra,0xfffff
    8000247c:	738080e7          	jalr	1848(ra) # 80001bb0 <_ZN9Scheduler3putEP3TCB>
}
    80002480:	00048513          	mv	a0,s1
    80002484:	03813083          	ld	ra,56(sp)
    80002488:	03013403          	ld	s0,48(sp)
    8000248c:	02813483          	ld	s1,40(sp)
    80002490:	02013903          	ld	s2,32(sp)
    80002494:	01813983          	ld	s3,24(sp)
    80002498:	01013a03          	ld	s4,16(sp)
    8000249c:	00813a83          	ld	s5,8(sp)
    800024a0:	04010113          	addi	sp,sp,64
    800024a4:	00008067          	ret
    nt->context = {(uint64)&threadWrapper,stack_space != nullptr ? (uint64)&stack_space[DEFAULT_STACK_SIZE]:0};
    800024a8:	00000913          	li	s2,0
    800024ac:	fb5ff06f          	j	80002460 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x70>

00000000800024b0 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00813423          	sd	s0,8(sp)
    800024b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x13");
    800024bc:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800024c0:	00000073          	ecall
}
    800024c4:	00813403          	ld	s0,8(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800024d0:	fe010113          	addi	sp,sp,-32
    800024d4:	00113c23          	sd	ra,24(sp)
    800024d8:	00813823          	sd	s0,16(sp)
    800024dc:	00913423          	sd	s1,8(sp)
    800024e0:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800024e4:	00008497          	auipc	s1,0x8
    800024e8:	f444b483          	ld	s1,-188(s1) # 8000a428 <_ZN3TCB7runningE>
    bool isFinished() const{return finished;}
    800024ec:	0204c783          	lbu	a5,32(s1)
    if(!old->isFinished() && !old->isBlocked()){
    800024f0:	00079663          	bnez	a5,800024fc <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const{return blocked;}
    800024f4:	0224c783          	lbu	a5,34(s1)
    800024f8:	02078c63          	beqz	a5,80002530 <_ZN3TCB8dispatchEv+0x60>
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	638080e7          	jalr	1592(ra) # 80001b34 <_ZN9Scheduler3getEv>
    80002504:	00008797          	auipc	a5,0x8
    80002508:	f2a7b223          	sd	a0,-220(a5) # 8000a428 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context,&running->context);
    8000250c:	01050593          	addi	a1,a0,16
    80002510:	01048513          	addi	a0,s1,16
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	e24080e7          	jalr	-476(ra) # 80001338 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>

}
    8000251c:	01813083          	ld	ra,24(sp)
    80002520:	01013403          	ld	s0,16(sp)
    80002524:	00813483          	ld	s1,8(sp)
    80002528:	02010113          	addi	sp,sp,32
    8000252c:	00008067          	ret
        Scheduler::put(old);
    80002530:	00048513          	mv	a0,s1
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	67c080e7          	jalr	1660(ra) # 80001bb0 <_ZN9Scheduler3putEP3TCB>
    8000253c:	fc1ff06f          	j	800024fc <_ZN3TCB8dispatchEv+0x2c>

0000000080002540 <_ZN3TCB4joinEPS_>:
void TCB::join(TCB *handle) {
    80002540:	fe010113          	addi	sp,sp,-32
    80002544:	00113c23          	sd	ra,24(sp)
    80002548:	00813823          	sd	s0,16(sp)
    8000254c:	00913423          	sd	s1,8(sp)
    80002550:	02010413          	addi	s0,sp,32
    80002554:	00050493          	mv	s1,a0
    bool isFinished() const{return finished;}
    80002558:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()){
    8000255c:	00079863          	bnez	a5,8000256c <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80002560:	00000097          	auipc	ra,0x0
    80002564:	f70080e7          	jalr	-144(ra) # 800024d0 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()){
    80002568:	ff1ff06f          	j	80002558 <_ZN3TCB4joinEPS_+0x18>
}
    8000256c:	01813083          	ld	ra,24(sp)
    80002570:	01013403          	ld	s0,16(sp)
    80002574:	00813483          	ld	s1,8(sp)
    80002578:	02010113          	addi	sp,sp,32
    8000257c:	00008067          	ret

0000000080002580 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	01213023          	sd	s2,0(sp)
    80002594:	02010413          	addi	s0,sp,32
    80002598:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000259c:	00000913          	li	s2,0
    800025a0:	00c0006f          	j	800025ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	ef4080e7          	jalr	-268(ra) # 80001498 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	020080e7          	jalr	32(ra) # 800015cc <_Z4getcv>
    800025b4:	0005059b          	sext.w	a1,a0
    800025b8:	01b00793          	li	a5,27
    800025bc:	02f58a63          	beq	a1,a5,800025f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800025c0:	0084b503          	ld	a0,8(s1)
    800025c4:	00003097          	auipc	ra,0x3
    800025c8:	3f4080e7          	jalr	1012(ra) # 800059b8 <_ZN6Buffer3putEi>
        i++;
    800025cc:	0019071b          	addiw	a4,s2,1
    800025d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800025d4:	0004a683          	lw	a3,0(s1)
    800025d8:	0026979b          	slliw	a5,a3,0x2
    800025dc:	00d787bb          	addw	a5,a5,a3
    800025e0:	0017979b          	slliw	a5,a5,0x1
    800025e4:	02f767bb          	remw	a5,a4,a5
    800025e8:	fc0792e3          	bnez	a5,800025ac <_ZL16producerKeyboardPv+0x2c>
    800025ec:	fb9ff06f          	j	800025a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800025f0:	00100793          	li	a5,1
    800025f4:	00008717          	auipc	a4,0x8
    800025f8:	e2f72e23          	sw	a5,-452(a4) # 8000a430 <_ZL9threadEnd>
    data->buffer->put('!');
    800025fc:	02100593          	li	a1,33
    80002600:	0084b503          	ld	a0,8(s1)
    80002604:	00003097          	auipc	ra,0x3
    80002608:	3b4080e7          	jalr	948(ra) # 800059b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000260c:	0104b503          	ld	a0,16(s1)
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	f54080e7          	jalr	-172(ra) # 80001564 <_Z10sem_signalP11MySemaphore>
}
    80002618:	01813083          	ld	ra,24(sp)
    8000261c:	01013403          	ld	s0,16(sp)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	00013903          	ld	s2,0(sp)
    80002628:	02010113          	addi	sp,sp,32
    8000262c:	00008067          	ret

0000000080002630 <_ZL8producerPv>:

static void producer(void *arg) {
    80002630:	fe010113          	addi	sp,sp,-32
    80002634:	00113c23          	sd	ra,24(sp)
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	00913423          	sd	s1,8(sp)
    80002640:	01213023          	sd	s2,0(sp)
    80002644:	02010413          	addi	s0,sp,32
    80002648:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000264c:	00000913          	li	s2,0
    80002650:	00c0006f          	j	8000265c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	e44080e7          	jalr	-444(ra) # 80001498 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000265c:	00008797          	auipc	a5,0x8
    80002660:	dd47a783          	lw	a5,-556(a5) # 8000a430 <_ZL9threadEnd>
    80002664:	02079e63          	bnez	a5,800026a0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002668:	0004a583          	lw	a1,0(s1)
    8000266c:	0305859b          	addiw	a1,a1,48
    80002670:	0084b503          	ld	a0,8(s1)
    80002674:	00003097          	auipc	ra,0x3
    80002678:	344080e7          	jalr	836(ra) # 800059b8 <_ZN6Buffer3putEi>
        i++;
    8000267c:	0019071b          	addiw	a4,s2,1
    80002680:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002684:	0004a683          	lw	a3,0(s1)
    80002688:	0026979b          	slliw	a5,a3,0x2
    8000268c:	00d787bb          	addw	a5,a5,a3
    80002690:	0017979b          	slliw	a5,a5,0x1
    80002694:	02f767bb          	remw	a5,a4,a5
    80002698:	fc0792e3          	bnez	a5,8000265c <_ZL8producerPv+0x2c>
    8000269c:	fb9ff06f          	j	80002654 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800026a0:	0104b503          	ld	a0,16(s1)
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	ec0080e7          	jalr	-320(ra) # 80001564 <_Z10sem_signalP11MySemaphore>
}
    800026ac:	01813083          	ld	ra,24(sp)
    800026b0:	01013403          	ld	s0,16(sp)
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	00013903          	ld	s2,0(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret

00000000800026c4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800026c4:	fd010113          	addi	sp,sp,-48
    800026c8:	02113423          	sd	ra,40(sp)
    800026cc:	02813023          	sd	s0,32(sp)
    800026d0:	00913c23          	sd	s1,24(sp)
    800026d4:	01213823          	sd	s2,16(sp)
    800026d8:	01313423          	sd	s3,8(sp)
    800026dc:	03010413          	addi	s0,sp,48
    800026e0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800026e4:	00000993          	li	s3,0
    800026e8:	01c0006f          	j	80002704 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	dac080e7          	jalr	-596(ra) # 80001498 <_Z15thread_dispatchv>
    800026f4:	0500006f          	j	80002744 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800026f8:	00a00513          	li	a0,10
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	ef8080e7          	jalr	-264(ra) # 800015f4 <_Z4putcc>
    while (!threadEnd) {
    80002704:	00008797          	auipc	a5,0x8
    80002708:	d2c7a783          	lw	a5,-724(a5) # 8000a430 <_ZL9threadEnd>
    8000270c:	06079063          	bnez	a5,8000276c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002710:	00893503          	ld	a0,8(s2)
    80002714:	00003097          	auipc	ra,0x3
    80002718:	334080e7          	jalr	820(ra) # 80005a48 <_ZN6Buffer3getEv>
        i++;
    8000271c:	0019849b          	addiw	s1,s3,1
    80002720:	0004899b          	sext.w	s3,s1
        putc(key);
    80002724:	0ff57513          	andi	a0,a0,255
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	ecc080e7          	jalr	-308(ra) # 800015f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002730:	00092703          	lw	a4,0(s2)
    80002734:	0027179b          	slliw	a5,a4,0x2
    80002738:	00e787bb          	addw	a5,a5,a4
    8000273c:	02f4e7bb          	remw	a5,s1,a5
    80002740:	fa0786e3          	beqz	a5,800026ec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002744:	05000793          	li	a5,80
    80002748:	02f4e4bb          	remw	s1,s1,a5
    8000274c:	fa049ce3          	bnez	s1,80002704 <_ZL8consumerPv+0x40>
    80002750:	fa9ff06f          	j	800026f8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002754:	00893503          	ld	a0,8(s2)
    80002758:	00003097          	auipc	ra,0x3
    8000275c:	2f0080e7          	jalr	752(ra) # 80005a48 <_ZN6Buffer3getEv>
        putc(key);
    80002760:	0ff57513          	andi	a0,a0,255
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	e90080e7          	jalr	-368(ra) # 800015f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000276c:	00893503          	ld	a0,8(s2)
    80002770:	00003097          	auipc	ra,0x3
    80002774:	364080e7          	jalr	868(ra) # 80005ad4 <_ZN6Buffer6getCntEv>
    80002778:	fca04ee3          	bgtz	a0,80002754 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000277c:	01093503          	ld	a0,16(s2)
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	de4080e7          	jalr	-540(ra) # 80001564 <_Z10sem_signalP11MySemaphore>
}
    80002788:	02813083          	ld	ra,40(sp)
    8000278c:	02013403          	ld	s0,32(sp)
    80002790:	01813483          	ld	s1,24(sp)
    80002794:	01013903          	ld	s2,16(sp)
    80002798:	00813983          	ld	s3,8(sp)
    8000279c:	03010113          	addi	sp,sp,48
    800027a0:	00008067          	ret

00000000800027a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800027a4:	f9010113          	addi	sp,sp,-112
    800027a8:	06113423          	sd	ra,104(sp)
    800027ac:	06813023          	sd	s0,96(sp)
    800027b0:	04913c23          	sd	s1,88(sp)
    800027b4:	05213823          	sd	s2,80(sp)
    800027b8:	05313423          	sd	s3,72(sp)
    800027bc:	05413023          	sd	s4,64(sp)
    800027c0:	03513c23          	sd	s5,56(sp)
    800027c4:	03613823          	sd	s6,48(sp)
    800027c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800027cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800027d0:	00006517          	auipc	a0,0x6
    800027d4:	86850513          	addi	a0,a0,-1944 # 80008038 <CONSOLE_STATUS+0x28>
    800027d8:	00002097          	auipc	ra,0x2
    800027dc:	220080e7          	jalr	544(ra) # 800049f8 <_Z11printStringPKc>
    getString(input, 30);
    800027e0:	01e00593          	li	a1,30
    800027e4:	fa040493          	addi	s1,s0,-96
    800027e8:	00048513          	mv	a0,s1
    800027ec:	00002097          	auipc	ra,0x2
    800027f0:	294080e7          	jalr	660(ra) # 80004a80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800027f4:	00048513          	mv	a0,s1
    800027f8:	00002097          	auipc	ra,0x2
    800027fc:	360080e7          	jalr	864(ra) # 80004b58 <_Z11stringToIntPKc>
    80002800:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002804:	00006517          	auipc	a0,0x6
    80002808:	85450513          	addi	a0,a0,-1964 # 80008058 <CONSOLE_STATUS+0x48>
    8000280c:	00002097          	auipc	ra,0x2
    80002810:	1ec080e7          	jalr	492(ra) # 800049f8 <_Z11printStringPKc>
    getString(input, 30);
    80002814:	01e00593          	li	a1,30
    80002818:	00048513          	mv	a0,s1
    8000281c:	00002097          	auipc	ra,0x2
    80002820:	264080e7          	jalr	612(ra) # 80004a80 <_Z9getStringPci>
    n = stringToInt(input);
    80002824:	00048513          	mv	a0,s1
    80002828:	00002097          	auipc	ra,0x2
    8000282c:	330080e7          	jalr	816(ra) # 80004b58 <_Z11stringToIntPKc>
    80002830:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002834:	00006517          	auipc	a0,0x6
    80002838:	84450513          	addi	a0,a0,-1980 # 80008078 <CONSOLE_STATUS+0x68>
    8000283c:	00002097          	auipc	ra,0x2
    80002840:	1bc080e7          	jalr	444(ra) # 800049f8 <_Z11printStringPKc>
    80002844:	00000613          	li	a2,0
    80002848:	00a00593          	li	a1,10
    8000284c:	00090513          	mv	a0,s2
    80002850:	00002097          	auipc	ra,0x2
    80002854:	358080e7          	jalr	856(ra) # 80004ba8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002858:	00006517          	auipc	a0,0x6
    8000285c:	83850513          	addi	a0,a0,-1992 # 80008090 <CONSOLE_STATUS+0x80>
    80002860:	00002097          	auipc	ra,0x2
    80002864:	198080e7          	jalr	408(ra) # 800049f8 <_Z11printStringPKc>
    80002868:	00000613          	li	a2,0
    8000286c:	00a00593          	li	a1,10
    80002870:	00048513          	mv	a0,s1
    80002874:	00002097          	auipc	ra,0x2
    80002878:	334080e7          	jalr	820(ra) # 80004ba8 <_Z8printIntiii>
    printString(".\n");
    8000287c:	00006517          	auipc	a0,0x6
    80002880:	82c50513          	addi	a0,a0,-2004 # 800080a8 <CONSOLE_STATUS+0x98>
    80002884:	00002097          	auipc	ra,0x2
    80002888:	174080e7          	jalr	372(ra) # 800049f8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000288c:	0324c463          	blt	s1,s2,800028b4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002890:	03205c63          	blez	s2,800028c8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002894:	03800513          	li	a0,56
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	4a0080e7          	jalr	1184(ra) # 80001d38 <_Znwm>
    800028a0:	00050a13          	mv	s4,a0
    800028a4:	00048593          	mv	a1,s1
    800028a8:	00003097          	auipc	ra,0x3
    800028ac:	074080e7          	jalr	116(ra) # 8000591c <_ZN6BufferC1Ei>
    800028b0:	0300006f          	j	800028e0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800028b4:	00005517          	auipc	a0,0x5
    800028b8:	7fc50513          	addi	a0,a0,2044 # 800080b0 <CONSOLE_STATUS+0xa0>
    800028bc:	00002097          	auipc	ra,0x2
    800028c0:	13c080e7          	jalr	316(ra) # 800049f8 <_Z11printStringPKc>
        return;
    800028c4:	0140006f          	j	800028d8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800028c8:	00006517          	auipc	a0,0x6
    800028cc:	82850513          	addi	a0,a0,-2008 # 800080f0 <CONSOLE_STATUS+0xe0>
    800028d0:	00002097          	auipc	ra,0x2
    800028d4:	128080e7          	jalr	296(ra) # 800049f8 <_Z11printStringPKc>
        return;
    800028d8:	000b0113          	mv	sp,s6
    800028dc:	1500006f          	j	80002a2c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800028e0:	00000593          	li	a1,0
    800028e4:	00008517          	auipc	a0,0x8
    800028e8:	b5450513          	addi	a0,a0,-1196 # 8000a438 <_ZL10waitForAll>
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	bf0080e7          	jalr	-1040(ra) # 800014dc <_Z8sem_openPP11MySemaphorej>
    thread_t threads[threadNum];
    800028f4:	00391793          	slli	a5,s2,0x3
    800028f8:	00f78793          	addi	a5,a5,15
    800028fc:	ff07f793          	andi	a5,a5,-16
    80002900:	40f10133          	sub	sp,sp,a5
    80002904:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002908:	0019071b          	addiw	a4,s2,1
    8000290c:	00171793          	slli	a5,a4,0x1
    80002910:	00e787b3          	add	a5,a5,a4
    80002914:	00379793          	slli	a5,a5,0x3
    80002918:	00f78793          	addi	a5,a5,15
    8000291c:	ff07f793          	andi	a5,a5,-16
    80002920:	40f10133          	sub	sp,sp,a5
    80002924:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002928:	00191613          	slli	a2,s2,0x1
    8000292c:	012607b3          	add	a5,a2,s2
    80002930:	00379793          	slli	a5,a5,0x3
    80002934:	00f987b3          	add	a5,s3,a5
    80002938:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000293c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002940:	00008717          	auipc	a4,0x8
    80002944:	af873703          	ld	a4,-1288(a4) # 8000a438 <_ZL10waitForAll>
    80002948:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000294c:	00078613          	mv	a2,a5
    80002950:	00000597          	auipc	a1,0x0
    80002954:	d7458593          	addi	a1,a1,-652 # 800026c4 <_ZL8consumerPv>
    80002958:	f9840513          	addi	a0,s0,-104
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	a98080e7          	jalr	-1384(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002964:	00000493          	li	s1,0
    80002968:	0280006f          	j	80002990 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000296c:	00000597          	auipc	a1,0x0
    80002970:	c1458593          	addi	a1,a1,-1004 # 80002580 <_ZL16producerKeyboardPv>
                      data + i);
    80002974:	00179613          	slli	a2,a5,0x1
    80002978:	00f60633          	add	a2,a2,a5
    8000297c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002980:	00c98633          	add	a2,s3,a2
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	a70080e7          	jalr	-1424(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000298c:	0014849b          	addiw	s1,s1,1
    80002990:	0524d263          	bge	s1,s2,800029d4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002994:	00149793          	slli	a5,s1,0x1
    80002998:	009787b3          	add	a5,a5,s1
    8000299c:	00379793          	slli	a5,a5,0x3
    800029a0:	00f987b3          	add	a5,s3,a5
    800029a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800029a8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800029ac:	00008717          	auipc	a4,0x8
    800029b0:	a8c73703          	ld	a4,-1396(a4) # 8000a438 <_ZL10waitForAll>
    800029b4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800029b8:	00048793          	mv	a5,s1
    800029bc:	00349513          	slli	a0,s1,0x3
    800029c0:	00aa8533          	add	a0,s5,a0
    800029c4:	fa9054e3          	blez	s1,8000296c <_Z22producerConsumer_C_APIv+0x1c8>
    800029c8:	00000597          	auipc	a1,0x0
    800029cc:	c6858593          	addi	a1,a1,-920 # 80002630 <_ZL8producerPv>
    800029d0:	fa5ff06f          	j	80002974 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	ac4080e7          	jalr	-1340(ra) # 80001498 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800029dc:	00000493          	li	s1,0
    800029e0:	00994e63          	blt	s2,s1,800029fc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800029e4:	00008517          	auipc	a0,0x8
    800029e8:	a5453503          	ld	a0,-1452(a0) # 8000a438 <_ZL10waitForAll>
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	b4c080e7          	jalr	-1204(ra) # 80001538 <_Z8sem_waitP11MySemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800029f4:	0014849b          	addiw	s1,s1,1
    800029f8:	fe9ff06f          	j	800029e0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800029fc:	00008517          	auipc	a0,0x8
    80002a00:	a3c53503          	ld	a0,-1476(a0) # 8000a438 <_ZL10waitForAll>
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	b08080e7          	jalr	-1272(ra) # 8000150c <_Z9sem_closeP11MySemaphore>
    delete buffer;
    80002a0c:	000a0e63          	beqz	s4,80002a28 <_Z22producerConsumer_C_APIv+0x284>
    80002a10:	000a0513          	mv	a0,s4
    80002a14:	00003097          	auipc	ra,0x3
    80002a18:	148080e7          	jalr	328(ra) # 80005b5c <_ZN6BufferD1Ev>
    80002a1c:	000a0513          	mv	a0,s4
    80002a20:	fffff097          	auipc	ra,0xfffff
    80002a24:	368080e7          	jalr	872(ra) # 80001d88 <_ZdlPv>
    80002a28:	000b0113          	mv	sp,s6

}
    80002a2c:	f9040113          	addi	sp,s0,-112
    80002a30:	06813083          	ld	ra,104(sp)
    80002a34:	06013403          	ld	s0,96(sp)
    80002a38:	05813483          	ld	s1,88(sp)
    80002a3c:	05013903          	ld	s2,80(sp)
    80002a40:	04813983          	ld	s3,72(sp)
    80002a44:	04013a03          	ld	s4,64(sp)
    80002a48:	03813a83          	ld	s5,56(sp)
    80002a4c:	03013b03          	ld	s6,48(sp)
    80002a50:	07010113          	addi	sp,sp,112
    80002a54:	00008067          	ret
    80002a58:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002a5c:	000a0513          	mv	a0,s4
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	328080e7          	jalr	808(ra) # 80001d88 <_ZdlPv>
    80002a68:	00048513          	mv	a0,s1
    80002a6c:	00009097          	auipc	ra,0x9
    80002a70:	adc080e7          	jalr	-1316(ra) # 8000b548 <_Unwind_Resume>

0000000080002a74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	01213023          	sd	s2,0(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002a90:	00100793          	li	a5,1
    80002a94:	02a7f863          	bgeu	a5,a0,80002ac4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002a98:	00a00793          	li	a5,10
    80002a9c:	02f577b3          	remu	a5,a0,a5
    80002aa0:	02078e63          	beqz	a5,80002adc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002aa4:	fff48513          	addi	a0,s1,-1
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	fcc080e7          	jalr	-52(ra) # 80002a74 <_ZL9fibonaccim>
    80002ab0:	00050913          	mv	s2,a0
    80002ab4:	ffe48513          	addi	a0,s1,-2
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	fbc080e7          	jalr	-68(ra) # 80002a74 <_ZL9fibonaccim>
    80002ac0:	00a90533          	add	a0,s2,a0
}
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00813483          	ld	s1,8(sp)
    80002ad0:	00013903          	ld	s2,0(sp)
    80002ad4:	02010113          	addi	sp,sp,32
    80002ad8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	9bc080e7          	jalr	-1604(ra) # 80001498 <_Z15thread_dispatchv>
    80002ae4:	fc1ff06f          	j	80002aa4 <_ZL9fibonaccim+0x30>

0000000080002ae8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002ae8:	fe010113          	addi	sp,sp,-32
    80002aec:	00113c23          	sd	ra,24(sp)
    80002af0:	00813823          	sd	s0,16(sp)
    80002af4:	00913423          	sd	s1,8(sp)
    80002af8:	01213023          	sd	s2,0(sp)
    80002afc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002b00:	00000913          	li	s2,0
    80002b04:	0380006f          	j	80002b3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	990080e7          	jalr	-1648(ra) # 80001498 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b10:	00148493          	addi	s1,s1,1
    80002b14:	000027b7          	lui	a5,0x2
    80002b18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b1c:	0097ee63          	bltu	a5,s1,80002b38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b20:	00000713          	li	a4,0
    80002b24:	000077b7          	lui	a5,0x7
    80002b28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b2c:	fce7eee3          	bltu	a5,a4,80002b08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002b30:	00170713          	addi	a4,a4,1
    80002b34:	ff1ff06f          	j	80002b24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002b38:	00190913          	addi	s2,s2,1
    80002b3c:	00900793          	li	a5,9
    80002b40:	0527e063          	bltu	a5,s2,80002b80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002b44:	00005517          	auipc	a0,0x5
    80002b48:	5dc50513          	addi	a0,a0,1500 # 80008120 <CONSOLE_STATUS+0x110>
    80002b4c:	00002097          	auipc	ra,0x2
    80002b50:	eac080e7          	jalr	-340(ra) # 800049f8 <_Z11printStringPKc>
    80002b54:	00000613          	li	a2,0
    80002b58:	00a00593          	li	a1,10
    80002b5c:	0009051b          	sext.w	a0,s2
    80002b60:	00002097          	auipc	ra,0x2
    80002b64:	048080e7          	jalr	72(ra) # 80004ba8 <_Z8printIntiii>
    80002b68:	00006517          	auipc	a0,0x6
    80002b6c:	84850513          	addi	a0,a0,-1976 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002b70:	00002097          	auipc	ra,0x2
    80002b74:	e88080e7          	jalr	-376(ra) # 800049f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b78:	00000493          	li	s1,0
    80002b7c:	f99ff06f          	j	80002b14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002b80:	00005517          	auipc	a0,0x5
    80002b84:	5a850513          	addi	a0,a0,1448 # 80008128 <CONSOLE_STATUS+0x118>
    80002b88:	00002097          	auipc	ra,0x2
    80002b8c:	e70080e7          	jalr	-400(ra) # 800049f8 <_Z11printStringPKc>
    finishedA = true;
    80002b90:	00100793          	li	a5,1
    80002b94:	00008717          	auipc	a4,0x8
    80002b98:	8af70623          	sb	a5,-1876(a4) # 8000a440 <_ZL9finishedA>
}
    80002b9c:	01813083          	ld	ra,24(sp)
    80002ba0:	01013403          	ld	s0,16(sp)
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	00013903          	ld	s2,0(sp)
    80002bac:	02010113          	addi	sp,sp,32
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	00813823          	sd	s0,16(sp)
    80002bc0:	00913423          	sd	s1,8(sp)
    80002bc4:	01213023          	sd	s2,0(sp)
    80002bc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002bcc:	00000913          	li	s2,0
    80002bd0:	0380006f          	j	80002c08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	8c4080e7          	jalr	-1852(ra) # 80001498 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002bdc:	00148493          	addi	s1,s1,1
    80002be0:	000027b7          	lui	a5,0x2
    80002be4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002be8:	0097ee63          	bltu	a5,s1,80002c04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bec:	00000713          	li	a4,0
    80002bf0:	000077b7          	lui	a5,0x7
    80002bf4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002bf8:	fce7eee3          	bltu	a5,a4,80002bd4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002bfc:	00170713          	addi	a4,a4,1
    80002c00:	ff1ff06f          	j	80002bf0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c04:	00190913          	addi	s2,s2,1
    80002c08:	00f00793          	li	a5,15
    80002c0c:	0527e063          	bltu	a5,s2,80002c4c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c10:	00005517          	auipc	a0,0x5
    80002c14:	52850513          	addi	a0,a0,1320 # 80008138 <CONSOLE_STATUS+0x128>
    80002c18:	00002097          	auipc	ra,0x2
    80002c1c:	de0080e7          	jalr	-544(ra) # 800049f8 <_Z11printStringPKc>
    80002c20:	00000613          	li	a2,0
    80002c24:	00a00593          	li	a1,10
    80002c28:	0009051b          	sext.w	a0,s2
    80002c2c:	00002097          	auipc	ra,0x2
    80002c30:	f7c080e7          	jalr	-132(ra) # 80004ba8 <_Z8printIntiii>
    80002c34:	00005517          	auipc	a0,0x5
    80002c38:	77c50513          	addi	a0,a0,1916 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002c3c:	00002097          	auipc	ra,0x2
    80002c40:	dbc080e7          	jalr	-580(ra) # 800049f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c44:	00000493          	li	s1,0
    80002c48:	f99ff06f          	j	80002be0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002c4c:	00005517          	auipc	a0,0x5
    80002c50:	4f450513          	addi	a0,a0,1268 # 80008140 <CONSOLE_STATUS+0x130>
    80002c54:	00002097          	auipc	ra,0x2
    80002c58:	da4080e7          	jalr	-604(ra) # 800049f8 <_Z11printStringPKc>
    finishedB = true;
    80002c5c:	00100793          	li	a5,1
    80002c60:	00007717          	auipc	a4,0x7
    80002c64:	7ef700a3          	sb	a5,2017(a4) # 8000a441 <_ZL9finishedB>
    thread_dispatch();
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	830080e7          	jalr	-2000(ra) # 80001498 <_Z15thread_dispatchv>
}
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	00013903          	ld	s2,0(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret

0000000080002c88 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	01213023          	sd	s2,0(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ca0:	00000493          	li	s1,0
    80002ca4:	0400006f          	j	80002ce4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ca8:	00005517          	auipc	a0,0x5
    80002cac:	4a850513          	addi	a0,a0,1192 # 80008150 <CONSOLE_STATUS+0x140>
    80002cb0:	00002097          	auipc	ra,0x2
    80002cb4:	d48080e7          	jalr	-696(ra) # 800049f8 <_Z11printStringPKc>
    80002cb8:	00000613          	li	a2,0
    80002cbc:	00a00593          	li	a1,10
    80002cc0:	00048513          	mv	a0,s1
    80002cc4:	00002097          	auipc	ra,0x2
    80002cc8:	ee4080e7          	jalr	-284(ra) # 80004ba8 <_Z8printIntiii>
    80002ccc:	00005517          	auipc	a0,0x5
    80002cd0:	6e450513          	addi	a0,a0,1764 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002cd4:	00002097          	auipc	ra,0x2
    80002cd8:	d24080e7          	jalr	-732(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002cdc:	0014849b          	addiw	s1,s1,1
    80002ce0:	0ff4f493          	andi	s1,s1,255
    80002ce4:	00200793          	li	a5,2
    80002ce8:	fc97f0e3          	bgeu	a5,s1,80002ca8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002cec:	00005517          	auipc	a0,0x5
    80002cf0:	46c50513          	addi	a0,a0,1132 # 80008158 <CONSOLE_STATUS+0x148>
    80002cf4:	00002097          	auipc	ra,0x2
    80002cf8:	d04080e7          	jalr	-764(ra) # 800049f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002cfc:	00700313          	li	t1,7
    thread_dispatch();
    80002d00:	ffffe097          	auipc	ra,0xffffe
    80002d04:	798080e7          	jalr	1944(ra) # 80001498 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002d08:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002d0c:	00005517          	auipc	a0,0x5
    80002d10:	45c50513          	addi	a0,a0,1116 # 80008168 <CONSOLE_STATUS+0x158>
    80002d14:	00002097          	auipc	ra,0x2
    80002d18:	ce4080e7          	jalr	-796(ra) # 800049f8 <_Z11printStringPKc>
    80002d1c:	00000613          	li	a2,0
    80002d20:	00a00593          	li	a1,10
    80002d24:	0009051b          	sext.w	a0,s2
    80002d28:	00002097          	auipc	ra,0x2
    80002d2c:	e80080e7          	jalr	-384(ra) # 80004ba8 <_Z8printIntiii>
    80002d30:	00005517          	auipc	a0,0x5
    80002d34:	68050513          	addi	a0,a0,1664 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002d38:	00002097          	auipc	ra,0x2
    80002d3c:	cc0080e7          	jalr	-832(ra) # 800049f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002d40:	00c00513          	li	a0,12
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	d30080e7          	jalr	-720(ra) # 80002a74 <_ZL9fibonaccim>
    80002d4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002d50:	00005517          	auipc	a0,0x5
    80002d54:	42050513          	addi	a0,a0,1056 # 80008170 <CONSOLE_STATUS+0x160>
    80002d58:	00002097          	auipc	ra,0x2
    80002d5c:	ca0080e7          	jalr	-864(ra) # 800049f8 <_Z11printStringPKc>
    80002d60:	00000613          	li	a2,0
    80002d64:	00a00593          	li	a1,10
    80002d68:	0009051b          	sext.w	a0,s2
    80002d6c:	00002097          	auipc	ra,0x2
    80002d70:	e3c080e7          	jalr	-452(ra) # 80004ba8 <_Z8printIntiii>
    80002d74:	00005517          	auipc	a0,0x5
    80002d78:	63c50513          	addi	a0,a0,1596 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002d7c:	00002097          	auipc	ra,0x2
    80002d80:	c7c080e7          	jalr	-900(ra) # 800049f8 <_Z11printStringPKc>
    80002d84:	0400006f          	j	80002dc4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d88:	00005517          	auipc	a0,0x5
    80002d8c:	3c850513          	addi	a0,a0,968 # 80008150 <CONSOLE_STATUS+0x140>
    80002d90:	00002097          	auipc	ra,0x2
    80002d94:	c68080e7          	jalr	-920(ra) # 800049f8 <_Z11printStringPKc>
    80002d98:	00000613          	li	a2,0
    80002d9c:	00a00593          	li	a1,10
    80002da0:	00048513          	mv	a0,s1
    80002da4:	00002097          	auipc	ra,0x2
    80002da8:	e04080e7          	jalr	-508(ra) # 80004ba8 <_Z8printIntiii>
    80002dac:	00005517          	auipc	a0,0x5
    80002db0:	60450513          	addi	a0,a0,1540 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002db4:	00002097          	auipc	ra,0x2
    80002db8:	c44080e7          	jalr	-956(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002dbc:	0014849b          	addiw	s1,s1,1
    80002dc0:	0ff4f493          	andi	s1,s1,255
    80002dc4:	00500793          	li	a5,5
    80002dc8:	fc97f0e3          	bgeu	a5,s1,80002d88 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002dcc:	00005517          	auipc	a0,0x5
    80002dd0:	35c50513          	addi	a0,a0,860 # 80008128 <CONSOLE_STATUS+0x118>
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	c24080e7          	jalr	-988(ra) # 800049f8 <_Z11printStringPKc>
    finishedC = true;
    80002ddc:	00100793          	li	a5,1
    80002de0:	00007717          	auipc	a4,0x7
    80002de4:	66f70123          	sb	a5,1634(a4) # 8000a442 <_ZL9finishedC>
    thread_dispatch();
    80002de8:	ffffe097          	auipc	ra,0xffffe
    80002dec:	6b0080e7          	jalr	1712(ra) # 80001498 <_Z15thread_dispatchv>
}
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	01013403          	ld	s0,16(sp)
    80002df8:	00813483          	ld	s1,8(sp)
    80002dfc:	00013903          	ld	s2,0(sp)
    80002e00:	02010113          	addi	sp,sp,32
    80002e04:	00008067          	ret

0000000080002e08 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002e08:	fe010113          	addi	sp,sp,-32
    80002e0c:	00113c23          	sd	ra,24(sp)
    80002e10:	00813823          	sd	s0,16(sp)
    80002e14:	00913423          	sd	s1,8(sp)
    80002e18:	01213023          	sd	s2,0(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002e20:	00a00493          	li	s1,10
    80002e24:	0400006f          	j	80002e64 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	35850513          	addi	a0,a0,856 # 80008180 <CONSOLE_STATUS+0x170>
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	bc8080e7          	jalr	-1080(ra) # 800049f8 <_Z11printStringPKc>
    80002e38:	00000613          	li	a2,0
    80002e3c:	00a00593          	li	a1,10
    80002e40:	00048513          	mv	a0,s1
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	d64080e7          	jalr	-668(ra) # 80004ba8 <_Z8printIntiii>
    80002e4c:	00005517          	auipc	a0,0x5
    80002e50:	56450513          	addi	a0,a0,1380 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	ba4080e7          	jalr	-1116(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002e5c:	0014849b          	addiw	s1,s1,1
    80002e60:	0ff4f493          	andi	s1,s1,255
    80002e64:	00c00793          	li	a5,12
    80002e68:	fc97f0e3          	bgeu	a5,s1,80002e28 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002e6c:	00005517          	auipc	a0,0x5
    80002e70:	31c50513          	addi	a0,a0,796 # 80008188 <CONSOLE_STATUS+0x178>
    80002e74:	00002097          	auipc	ra,0x2
    80002e78:	b84080e7          	jalr	-1148(ra) # 800049f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002e7c:	00500313          	li	t1,5
    thread_dispatch();
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	618080e7          	jalr	1560(ra) # 80001498 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002e88:	01000513          	li	a0,16
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	be8080e7          	jalr	-1048(ra) # 80002a74 <_ZL9fibonaccim>
    80002e94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002e98:	00005517          	auipc	a0,0x5
    80002e9c:	30050513          	addi	a0,a0,768 # 80008198 <CONSOLE_STATUS+0x188>
    80002ea0:	00002097          	auipc	ra,0x2
    80002ea4:	b58080e7          	jalr	-1192(ra) # 800049f8 <_Z11printStringPKc>
    80002ea8:	00000613          	li	a2,0
    80002eac:	00a00593          	li	a1,10
    80002eb0:	0009051b          	sext.w	a0,s2
    80002eb4:	00002097          	auipc	ra,0x2
    80002eb8:	cf4080e7          	jalr	-780(ra) # 80004ba8 <_Z8printIntiii>
    80002ebc:	00005517          	auipc	a0,0x5
    80002ec0:	4f450513          	addi	a0,a0,1268 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002ec4:	00002097          	auipc	ra,0x2
    80002ec8:	b34080e7          	jalr	-1228(ra) # 800049f8 <_Z11printStringPKc>
    80002ecc:	0400006f          	j	80002f0c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002ed0:	00005517          	auipc	a0,0x5
    80002ed4:	2b050513          	addi	a0,a0,688 # 80008180 <CONSOLE_STATUS+0x170>
    80002ed8:	00002097          	auipc	ra,0x2
    80002edc:	b20080e7          	jalr	-1248(ra) # 800049f8 <_Z11printStringPKc>
    80002ee0:	00000613          	li	a2,0
    80002ee4:	00a00593          	li	a1,10
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00002097          	auipc	ra,0x2
    80002ef0:	cbc080e7          	jalr	-836(ra) # 80004ba8 <_Z8printIntiii>
    80002ef4:	00005517          	auipc	a0,0x5
    80002ef8:	4bc50513          	addi	a0,a0,1212 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80002efc:	00002097          	auipc	ra,0x2
    80002f00:	afc080e7          	jalr	-1284(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002f04:	0014849b          	addiw	s1,s1,1
    80002f08:	0ff4f493          	andi	s1,s1,255
    80002f0c:	00f00793          	li	a5,15
    80002f10:	fc97f0e3          	bgeu	a5,s1,80002ed0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002f14:	00005517          	auipc	a0,0x5
    80002f18:	29450513          	addi	a0,a0,660 # 800081a8 <CONSOLE_STATUS+0x198>
    80002f1c:	00002097          	auipc	ra,0x2
    80002f20:	adc080e7          	jalr	-1316(ra) # 800049f8 <_Z11printStringPKc>
    finishedD = true;
    80002f24:	00100793          	li	a5,1
    80002f28:	00007717          	auipc	a4,0x7
    80002f2c:	50f70da3          	sb	a5,1307(a4) # 8000a443 <_ZL9finishedD>
    thread_dispatch();
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	568080e7          	jalr	1384(ra) # 80001498 <_Z15thread_dispatchv>
}
    80002f38:	01813083          	ld	ra,24(sp)
    80002f3c:	01013403          	ld	s0,16(sp)
    80002f40:	00813483          	ld	s1,8(sp)
    80002f44:	00013903          	ld	s2,0(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret

0000000080002f50 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002f50:	fc010113          	addi	sp,sp,-64
    80002f54:	02113c23          	sd	ra,56(sp)
    80002f58:	02813823          	sd	s0,48(sp)
    80002f5c:	02913423          	sd	s1,40(sp)
    80002f60:	03213023          	sd	s2,32(sp)
    80002f64:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002f68:	02000513          	li	a0,32
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	dcc080e7          	jalr	-564(ra) # 80001d38 <_Znwm>
    80002f74:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	020080e7          	jalr	32(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80002f80:	00007797          	auipc	a5,0x7
    80002f84:	28078793          	addi	a5,a5,640 # 8000a200 <_ZTV7WorkerA+0x10>
    80002f88:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002f8c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002f90:	00005517          	auipc	a0,0x5
    80002f94:	22850513          	addi	a0,a0,552 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002f98:	00002097          	auipc	ra,0x2
    80002f9c:	a60080e7          	jalr	-1440(ra) # 800049f8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002fa0:	02000513          	li	a0,32
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	d94080e7          	jalr	-620(ra) # 80001d38 <_Znwm>
    80002fac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	fe8080e7          	jalr	-24(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80002fb8:	00007797          	auipc	a5,0x7
    80002fbc:	27078793          	addi	a5,a5,624 # 8000a228 <_ZTV7WorkerB+0x10>
    80002fc0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002fc4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002fc8:	00005517          	auipc	a0,0x5
    80002fcc:	20850513          	addi	a0,a0,520 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80002fd0:	00002097          	auipc	ra,0x2
    80002fd4:	a28080e7          	jalr	-1496(ra) # 800049f8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002fd8:	02000513          	li	a0,32
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	d5c080e7          	jalr	-676(ra) # 80001d38 <_Znwm>
    80002fe4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	fb0080e7          	jalr	-80(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80002ff0:	00007797          	auipc	a5,0x7
    80002ff4:	26078793          	addi	a5,a5,608 # 8000a250 <_ZTV7WorkerC+0x10>
    80002ff8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002ffc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003000:	00005517          	auipc	a0,0x5
    80003004:	1e850513          	addi	a0,a0,488 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003008:	00002097          	auipc	ra,0x2
    8000300c:	9f0080e7          	jalr	-1552(ra) # 800049f8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003010:	02000513          	li	a0,32
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	d24080e7          	jalr	-732(ra) # 80001d38 <_Znwm>
    8000301c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	f78080e7          	jalr	-136(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80003028:	00007797          	auipc	a5,0x7
    8000302c:	25078793          	addi	a5,a5,592 # 8000a278 <_ZTV7WorkerD+0x10>
    80003030:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003034:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003038:	00005517          	auipc	a0,0x5
    8000303c:	1c850513          	addi	a0,a0,456 # 80008200 <CONSOLE_STATUS+0x1f0>
    80003040:	00002097          	auipc	ra,0x2
    80003044:	9b8080e7          	jalr	-1608(ra) # 800049f8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003048:	00000493          	li	s1,0
    8000304c:	00300793          	li	a5,3
    80003050:	0297c663          	blt	a5,s1,8000307c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003054:	00349793          	slli	a5,s1,0x3
    80003058:	fe040713          	addi	a4,s0,-32
    8000305c:	00f707b3          	add	a5,a4,a5
    80003060:	fe07b503          	ld	a0,-32(a5)
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	ddc080e7          	jalr	-548(ra) # 80001e40 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000306c:	0014849b          	addiw	s1,s1,1
    80003070:	fddff06f          	j	8000304c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	ed4080e7          	jalr	-300(ra) # 80001f48 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000307c:	00007797          	auipc	a5,0x7
    80003080:	3c47c783          	lbu	a5,964(a5) # 8000a440 <_ZL9finishedA>
    80003084:	fe0788e3          	beqz	a5,80003074 <_Z20Threads_CPP_API_testv+0x124>
    80003088:	00007797          	auipc	a5,0x7
    8000308c:	3b97c783          	lbu	a5,953(a5) # 8000a441 <_ZL9finishedB>
    80003090:	fe0782e3          	beqz	a5,80003074 <_Z20Threads_CPP_API_testv+0x124>
    80003094:	00007797          	auipc	a5,0x7
    80003098:	3ae7c783          	lbu	a5,942(a5) # 8000a442 <_ZL9finishedC>
    8000309c:	fc078ce3          	beqz	a5,80003074 <_Z20Threads_CPP_API_testv+0x124>
    800030a0:	00007797          	auipc	a5,0x7
    800030a4:	3a37c783          	lbu	a5,931(a5) # 8000a443 <_ZL9finishedD>
    800030a8:	fc0786e3          	beqz	a5,80003074 <_Z20Threads_CPP_API_testv+0x124>
    800030ac:	fc040493          	addi	s1,s0,-64
    800030b0:	0080006f          	j	800030b8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800030b4:	00848493          	addi	s1,s1,8
    800030b8:	fe040793          	addi	a5,s0,-32
    800030bc:	08f48663          	beq	s1,a5,80003148 <_Z20Threads_CPP_API_testv+0x1f8>
    800030c0:	0004b503          	ld	a0,0(s1)
    800030c4:	fe0508e3          	beqz	a0,800030b4 <_Z20Threads_CPP_API_testv+0x164>
    800030c8:	00053783          	ld	a5,0(a0)
    800030cc:	0087b783          	ld	a5,8(a5)
    800030d0:	000780e7          	jalr	a5
    800030d4:	fe1ff06f          	j	800030b4 <_Z20Threads_CPP_API_testv+0x164>
    800030d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800030dc:	00048513          	mv	a0,s1
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	ca8080e7          	jalr	-856(ra) # 80001d88 <_ZdlPv>
    800030e8:	00090513          	mv	a0,s2
    800030ec:	00008097          	auipc	ra,0x8
    800030f0:	45c080e7          	jalr	1116(ra) # 8000b548 <_Unwind_Resume>
    800030f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800030f8:	00048513          	mv	a0,s1
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	c8c080e7          	jalr	-884(ra) # 80001d88 <_ZdlPv>
    80003104:	00090513          	mv	a0,s2
    80003108:	00008097          	auipc	ra,0x8
    8000310c:	440080e7          	jalr	1088(ra) # 8000b548 <_Unwind_Resume>
    80003110:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003114:	00048513          	mv	a0,s1
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	c70080e7          	jalr	-912(ra) # 80001d88 <_ZdlPv>
    80003120:	00090513          	mv	a0,s2
    80003124:	00008097          	auipc	ra,0x8
    80003128:	424080e7          	jalr	1060(ra) # 8000b548 <_Unwind_Resume>
    8000312c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003130:	00048513          	mv	a0,s1
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	c54080e7          	jalr	-940(ra) # 80001d88 <_ZdlPv>
    8000313c:	00090513          	mv	a0,s2
    80003140:	00008097          	auipc	ra,0x8
    80003144:	408080e7          	jalr	1032(ra) # 8000b548 <_Unwind_Resume>
}
    80003148:	03813083          	ld	ra,56(sp)
    8000314c:	03013403          	ld	s0,48(sp)
    80003150:	02813483          	ld	s1,40(sp)
    80003154:	02013903          	ld	s2,32(sp)
    80003158:	04010113          	addi	sp,sp,64
    8000315c:	00008067          	ret

0000000080003160 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00113423          	sd	ra,8(sp)
    80003168:	00813023          	sd	s0,0(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	00007797          	auipc	a5,0x7
    80003174:	09078793          	addi	a5,a5,144 # 8000a200 <_ZTV7WorkerA+0x10>
    80003178:	00f53023          	sd	a5,0(a0)
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	d24080e7          	jalr	-732(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003184:	00813083          	ld	ra,8(sp)
    80003188:	00013403          	ld	s0,0(sp)
    8000318c:	01010113          	addi	sp,sp,16
    80003190:	00008067          	ret

0000000080003194 <_ZN7WorkerAD0Ev>:
    80003194:	fe010113          	addi	sp,sp,-32
    80003198:	00113c23          	sd	ra,24(sp)
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00913423          	sd	s1,8(sp)
    800031a4:	02010413          	addi	s0,sp,32
    800031a8:	00050493          	mv	s1,a0
    800031ac:	00007797          	auipc	a5,0x7
    800031b0:	05478793          	addi	a5,a5,84 # 8000a200 <_ZTV7WorkerA+0x10>
    800031b4:	00f53023          	sd	a5,0(a0)
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	ce8080e7          	jalr	-792(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    800031c0:	00048513          	mv	a0,s1
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	bc4080e7          	jalr	-1084(ra) # 80001d88 <_ZdlPv>
    800031cc:	01813083          	ld	ra,24(sp)
    800031d0:	01013403          	ld	s0,16(sp)
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	02010113          	addi	sp,sp,32
    800031dc:	00008067          	ret

00000000800031e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800031e0:	ff010113          	addi	sp,sp,-16
    800031e4:	00113423          	sd	ra,8(sp)
    800031e8:	00813023          	sd	s0,0(sp)
    800031ec:	01010413          	addi	s0,sp,16
    800031f0:	00007797          	auipc	a5,0x7
    800031f4:	03878793          	addi	a5,a5,56 # 8000a228 <_ZTV7WorkerB+0x10>
    800031f8:	00f53023          	sd	a5,0(a0)
    800031fc:	fffff097          	auipc	ra,0xfffff
    80003200:	ca4080e7          	jalr	-860(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003204:	00813083          	ld	ra,8(sp)
    80003208:	00013403          	ld	s0,0(sp)
    8000320c:	01010113          	addi	sp,sp,16
    80003210:	00008067          	ret

0000000080003214 <_ZN7WorkerBD0Ev>:
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00813823          	sd	s0,16(sp)
    80003220:	00913423          	sd	s1,8(sp)
    80003224:	02010413          	addi	s0,sp,32
    80003228:	00050493          	mv	s1,a0
    8000322c:	00007797          	auipc	a5,0x7
    80003230:	ffc78793          	addi	a5,a5,-4 # 8000a228 <_ZTV7WorkerB+0x10>
    80003234:	00f53023          	sd	a5,0(a0)
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	c68080e7          	jalr	-920(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003240:	00048513          	mv	a0,s1
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	b44080e7          	jalr	-1212(ra) # 80001d88 <_ZdlPv>
    8000324c:	01813083          	ld	ra,24(sp)
    80003250:	01013403          	ld	s0,16(sp)
    80003254:	00813483          	ld	s1,8(sp)
    80003258:	02010113          	addi	sp,sp,32
    8000325c:	00008067          	ret

0000000080003260 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00113423          	sd	ra,8(sp)
    80003268:	00813023          	sd	s0,0(sp)
    8000326c:	01010413          	addi	s0,sp,16
    80003270:	00007797          	auipc	a5,0x7
    80003274:	fe078793          	addi	a5,a5,-32 # 8000a250 <_ZTV7WorkerC+0x10>
    80003278:	00f53023          	sd	a5,0(a0)
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	c24080e7          	jalr	-988(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	00013403          	ld	s0,0(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZN7WorkerCD0Ev>:
    80003294:	fe010113          	addi	sp,sp,-32
    80003298:	00113c23          	sd	ra,24(sp)
    8000329c:	00813823          	sd	s0,16(sp)
    800032a0:	00913423          	sd	s1,8(sp)
    800032a4:	02010413          	addi	s0,sp,32
    800032a8:	00050493          	mv	s1,a0
    800032ac:	00007797          	auipc	a5,0x7
    800032b0:	fa478793          	addi	a5,a5,-92 # 8000a250 <_ZTV7WorkerC+0x10>
    800032b4:	00f53023          	sd	a5,0(a0)
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	be8080e7          	jalr	-1048(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    800032c0:	00048513          	mv	a0,s1
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	ac4080e7          	jalr	-1340(ra) # 80001d88 <_ZdlPv>
    800032cc:	01813083          	ld	ra,24(sp)
    800032d0:	01013403          	ld	s0,16(sp)
    800032d4:	00813483          	ld	s1,8(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret

00000000800032e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800032e0:	ff010113          	addi	sp,sp,-16
    800032e4:	00113423          	sd	ra,8(sp)
    800032e8:	00813023          	sd	s0,0(sp)
    800032ec:	01010413          	addi	s0,sp,16
    800032f0:	00007797          	auipc	a5,0x7
    800032f4:	f8878793          	addi	a5,a5,-120 # 8000a278 <_ZTV7WorkerD+0x10>
    800032f8:	00f53023          	sd	a5,0(a0)
    800032fc:	fffff097          	auipc	ra,0xfffff
    80003300:	ba4080e7          	jalr	-1116(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003304:	00813083          	ld	ra,8(sp)
    80003308:	00013403          	ld	s0,0(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_ZN7WorkerDD0Ev>:
    80003314:	fe010113          	addi	sp,sp,-32
    80003318:	00113c23          	sd	ra,24(sp)
    8000331c:	00813823          	sd	s0,16(sp)
    80003320:	00913423          	sd	s1,8(sp)
    80003324:	02010413          	addi	s0,sp,32
    80003328:	00050493          	mv	s1,a0
    8000332c:	00007797          	auipc	a5,0x7
    80003330:	f4c78793          	addi	a5,a5,-180 # 8000a278 <_ZTV7WorkerD+0x10>
    80003334:	00f53023          	sd	a5,0(a0)
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	b68080e7          	jalr	-1176(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003340:	00048513          	mv	a0,s1
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	a44080e7          	jalr	-1468(ra) # 80001d88 <_ZdlPv>
    8000334c:	01813083          	ld	ra,24(sp)
    80003350:	01013403          	ld	s0,16(sp)
    80003354:	00813483          	ld	s1,8(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret

0000000080003360 <_ZN7WorkerA3runEv>:
    void run() override {
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00113423          	sd	ra,8(sp)
    80003368:	00813023          	sd	s0,0(sp)
    8000336c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003370:	00000593          	li	a1,0
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	774080e7          	jalr	1908(ra) # 80002ae8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000337c:	00813083          	ld	ra,8(sp)
    80003380:	00013403          	ld	s0,0(sp)
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00008067          	ret

000000008000338c <_ZN7WorkerB3runEv>:
    void run() override {
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00113423          	sd	ra,8(sp)
    80003394:	00813023          	sd	s0,0(sp)
    80003398:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000339c:	00000593          	li	a1,0
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	814080e7          	jalr	-2028(ra) # 80002bb4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800033a8:	00813083          	ld	ra,8(sp)
    800033ac:	00013403          	ld	s0,0(sp)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret

00000000800033b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00113423          	sd	ra,8(sp)
    800033c0:	00813023          	sd	s0,0(sp)
    800033c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800033c8:	00000593          	li	a1,0
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	8bc080e7          	jalr	-1860(ra) # 80002c88 <_ZN7WorkerC11workerBodyCEPv>
    }
    800033d4:	00813083          	ld	ra,8(sp)
    800033d8:	00013403          	ld	s0,0(sp)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret

00000000800033e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800033e4:	ff010113          	addi	sp,sp,-16
    800033e8:	00113423          	sd	ra,8(sp)
    800033ec:	00813023          	sd	s0,0(sp)
    800033f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800033f4:	00000593          	li	a1,0
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	a10080e7          	jalr	-1520(ra) # 80002e08 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003400:	00813083          	ld	ra,8(sp)
    80003404:	00013403          	ld	s0,0(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret

0000000080003410 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003410:	f8010113          	addi	sp,sp,-128
    80003414:	06113c23          	sd	ra,120(sp)
    80003418:	06813823          	sd	s0,112(sp)
    8000341c:	06913423          	sd	s1,104(sp)
    80003420:	07213023          	sd	s2,96(sp)
    80003424:	05313c23          	sd	s3,88(sp)
    80003428:	05413823          	sd	s4,80(sp)
    8000342c:	05513423          	sd	s5,72(sp)
    80003430:	05613023          	sd	s6,64(sp)
    80003434:	03713c23          	sd	s7,56(sp)
    80003438:	03813823          	sd	s8,48(sp)
    8000343c:	03913423          	sd	s9,40(sp)
    80003440:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003444:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003448:	00005517          	auipc	a0,0x5
    8000344c:	bf050513          	addi	a0,a0,-1040 # 80008038 <CONSOLE_STATUS+0x28>
    80003450:	00001097          	auipc	ra,0x1
    80003454:	5a8080e7          	jalr	1448(ra) # 800049f8 <_Z11printStringPKc>
    getString(input, 30);
    80003458:	01e00593          	li	a1,30
    8000345c:	f8040493          	addi	s1,s0,-128
    80003460:	00048513          	mv	a0,s1
    80003464:	00001097          	auipc	ra,0x1
    80003468:	61c080e7          	jalr	1564(ra) # 80004a80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000346c:	00048513          	mv	a0,s1
    80003470:	00001097          	auipc	ra,0x1
    80003474:	6e8080e7          	jalr	1768(ra) # 80004b58 <_Z11stringToIntPKc>
    80003478:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000347c:	00005517          	auipc	a0,0x5
    80003480:	bdc50513          	addi	a0,a0,-1060 # 80008058 <CONSOLE_STATUS+0x48>
    80003484:	00001097          	auipc	ra,0x1
    80003488:	574080e7          	jalr	1396(ra) # 800049f8 <_Z11printStringPKc>
    getString(input, 30);
    8000348c:	01e00593          	li	a1,30
    80003490:	00048513          	mv	a0,s1
    80003494:	00001097          	auipc	ra,0x1
    80003498:	5ec080e7          	jalr	1516(ra) # 80004a80 <_Z9getStringPci>
    n = stringToInt(input);
    8000349c:	00048513          	mv	a0,s1
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	6b8080e7          	jalr	1720(ra) # 80004b58 <_Z11stringToIntPKc>
    800034a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800034ac:	00005517          	auipc	a0,0x5
    800034b0:	bcc50513          	addi	a0,a0,-1076 # 80008078 <CONSOLE_STATUS+0x68>
    800034b4:	00001097          	auipc	ra,0x1
    800034b8:	544080e7          	jalr	1348(ra) # 800049f8 <_Z11printStringPKc>
    printInt(threadNum);
    800034bc:	00000613          	li	a2,0
    800034c0:	00a00593          	li	a1,10
    800034c4:	00098513          	mv	a0,s3
    800034c8:	00001097          	auipc	ra,0x1
    800034cc:	6e0080e7          	jalr	1760(ra) # 80004ba8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800034d0:	00005517          	auipc	a0,0x5
    800034d4:	bc050513          	addi	a0,a0,-1088 # 80008090 <CONSOLE_STATUS+0x80>
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	520080e7          	jalr	1312(ra) # 800049f8 <_Z11printStringPKc>
    printInt(n);
    800034e0:	00000613          	li	a2,0
    800034e4:	00a00593          	li	a1,10
    800034e8:	00048513          	mv	a0,s1
    800034ec:	00001097          	auipc	ra,0x1
    800034f0:	6bc080e7          	jalr	1724(ra) # 80004ba8 <_Z8printIntiii>
    printString(".\n");
    800034f4:	00005517          	auipc	a0,0x5
    800034f8:	bb450513          	addi	a0,a0,-1100 # 800080a8 <CONSOLE_STATUS+0x98>
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	4fc080e7          	jalr	1276(ra) # 800049f8 <_Z11printStringPKc>
    if (threadNum > n) {
    80003504:	0334c463          	blt	s1,s3,8000352c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003508:	03305c63          	blez	s3,80003540 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000350c:	03800513          	li	a0,56
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	828080e7          	jalr	-2008(ra) # 80001d38 <_Znwm>
    80003518:	00050a93          	mv	s5,a0
    8000351c:	00048593          	mv	a1,s1
    80003520:	00001097          	auipc	ra,0x1
    80003524:	7a8080e7          	jalr	1960(ra) # 80004cc8 <_ZN9BufferCPPC1Ei>
    80003528:	0300006f          	j	80003558 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000352c:	00005517          	auipc	a0,0x5
    80003530:	b8450513          	addi	a0,a0,-1148 # 800080b0 <CONSOLE_STATUS+0xa0>
    80003534:	00001097          	auipc	ra,0x1
    80003538:	4c4080e7          	jalr	1220(ra) # 800049f8 <_Z11printStringPKc>
        return;
    8000353c:	0140006f          	j	80003550 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003540:	00005517          	auipc	a0,0x5
    80003544:	bb050513          	addi	a0,a0,-1104 # 800080f0 <CONSOLE_STATUS+0xe0>
    80003548:	00001097          	auipc	ra,0x1
    8000354c:	4b0080e7          	jalr	1200(ra) # 800049f8 <_Z11printStringPKc>
        return;
    80003550:	000c0113          	mv	sp,s8
    80003554:	2140006f          	j	80003768 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003558:	01000513          	li	a0,16
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	7dc080e7          	jalr	2012(ra) # 80001d38 <_Znwm>
    80003564:	00050913          	mv	s2,a0
    80003568:	00000593          	li	a1,0
    8000356c:	fffff097          	auipc	ra,0xfffff
    80003570:	a64080e7          	jalr	-1436(ra) # 80001fd0 <_ZN9SemaphoreC1Ej>
    80003574:	00007797          	auipc	a5,0x7
    80003578:	ed27be23          	sd	s2,-292(a5) # 8000a450 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000357c:	00399793          	slli	a5,s3,0x3
    80003580:	00f78793          	addi	a5,a5,15
    80003584:	ff07f793          	andi	a5,a5,-16
    80003588:	40f10133          	sub	sp,sp,a5
    8000358c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003590:	0019871b          	addiw	a4,s3,1
    80003594:	00171793          	slli	a5,a4,0x1
    80003598:	00e787b3          	add	a5,a5,a4
    8000359c:	00379793          	slli	a5,a5,0x3
    800035a0:	00f78793          	addi	a5,a5,15
    800035a4:	ff07f793          	andi	a5,a5,-16
    800035a8:	40f10133          	sub	sp,sp,a5
    800035ac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800035b0:	00199493          	slli	s1,s3,0x1
    800035b4:	013484b3          	add	s1,s1,s3
    800035b8:	00349493          	slli	s1,s1,0x3
    800035bc:	009b04b3          	add	s1,s6,s1
    800035c0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800035c4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800035c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800035cc:	02800513          	li	a0,40
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	768080e7          	jalr	1896(ra) # 80001d38 <_Znwm>
    800035d8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	9bc080e7          	jalr	-1604(ra) # 80001f98 <_ZN6ThreadC1Ev>
    800035e4:	00007797          	auipc	a5,0x7
    800035e8:	d0c78793          	addi	a5,a5,-756 # 8000a2f0 <_ZTV8Consumer+0x10>
    800035ec:	00fbb023          	sd	a5,0(s7)
    800035f0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800035f4:	000b8513          	mv	a0,s7
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	848080e7          	jalr	-1976(ra) # 80001e40 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003600:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003604:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003608:	00007797          	auipc	a5,0x7
    8000360c:	e487b783          	ld	a5,-440(a5) # 8000a450 <_ZL10waitForAll>
    80003610:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003614:	02800513          	li	a0,40
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	720080e7          	jalr	1824(ra) # 80001d38 <_Znwm>
    80003620:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003624:	fffff097          	auipc	ra,0xfffff
    80003628:	974080e7          	jalr	-1676(ra) # 80001f98 <_ZN6ThreadC1Ev>
    8000362c:	00007797          	auipc	a5,0x7
    80003630:	c7478793          	addi	a5,a5,-908 # 8000a2a0 <_ZTV16ProducerKeyborad+0x10>
    80003634:	00f4b023          	sd	a5,0(s1)
    80003638:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000363c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003640:	00048513          	mv	a0,s1
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	7fc080e7          	jalr	2044(ra) # 80001e40 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000364c:	00100913          	li	s2,1
    80003650:	0300006f          	j	80003680 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003654:	00007797          	auipc	a5,0x7
    80003658:	c7478793          	addi	a5,a5,-908 # 8000a2c8 <_ZTV8Producer+0x10>
    8000365c:	00fcb023          	sd	a5,0(s9)
    80003660:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003664:	00391793          	slli	a5,s2,0x3
    80003668:	00fa07b3          	add	a5,s4,a5
    8000366c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003670:	000c8513          	mv	a0,s9
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	7cc080e7          	jalr	1996(ra) # 80001e40 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000367c:	0019091b          	addiw	s2,s2,1
    80003680:	05395263          	bge	s2,s3,800036c4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003684:	00191493          	slli	s1,s2,0x1
    80003688:	012484b3          	add	s1,s1,s2
    8000368c:	00349493          	slli	s1,s1,0x3
    80003690:	009b04b3          	add	s1,s6,s1
    80003694:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003698:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000369c:	00007797          	auipc	a5,0x7
    800036a0:	db47b783          	ld	a5,-588(a5) # 8000a450 <_ZL10waitForAll>
    800036a4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800036a8:	02800513          	li	a0,40
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	68c080e7          	jalr	1676(ra) # 80001d38 <_Znwm>
    800036b4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	8e0080e7          	jalr	-1824(ra) # 80001f98 <_ZN6ThreadC1Ev>
    800036c0:	f95ff06f          	j	80003654 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	884080e7          	jalr	-1916(ra) # 80001f48 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800036cc:	00000493          	li	s1,0
    800036d0:	0099ce63          	blt	s3,s1,800036ec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800036d4:	00007517          	auipc	a0,0x7
    800036d8:	d7c53503          	ld	a0,-644(a0) # 8000a450 <_ZL10waitForAll>
    800036dc:	fffff097          	auipc	ra,0xfffff
    800036e0:	92c080e7          	jalr	-1748(ra) # 80002008 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800036e4:	0014849b          	addiw	s1,s1,1
    800036e8:	fe9ff06f          	j	800036d0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800036ec:	00007517          	auipc	a0,0x7
    800036f0:	d6453503          	ld	a0,-668(a0) # 8000a450 <_ZL10waitForAll>
    800036f4:	00050863          	beqz	a0,80003704 <_Z20testConsumerProducerv+0x2f4>
    800036f8:	00053783          	ld	a5,0(a0)
    800036fc:	0087b783          	ld	a5,8(a5)
    80003700:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003704:	00000493          	li	s1,0
    80003708:	0080006f          	j	80003710 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000370c:	0014849b          	addiw	s1,s1,1
    80003710:	0334d263          	bge	s1,s3,80003734 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003714:	00349793          	slli	a5,s1,0x3
    80003718:	00fa07b3          	add	a5,s4,a5
    8000371c:	0007b503          	ld	a0,0(a5)
    80003720:	fe0506e3          	beqz	a0,8000370c <_Z20testConsumerProducerv+0x2fc>
    80003724:	00053783          	ld	a5,0(a0)
    80003728:	0087b783          	ld	a5,8(a5)
    8000372c:	000780e7          	jalr	a5
    80003730:	fddff06f          	j	8000370c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003734:	000b8a63          	beqz	s7,80003748 <_Z20testConsumerProducerv+0x338>
    80003738:	000bb783          	ld	a5,0(s7)
    8000373c:	0087b783          	ld	a5,8(a5)
    80003740:	000b8513          	mv	a0,s7
    80003744:	000780e7          	jalr	a5
    delete buffer;
    80003748:	000a8e63          	beqz	s5,80003764 <_Z20testConsumerProducerv+0x354>
    8000374c:	000a8513          	mv	a0,s5
    80003750:	00002097          	auipc	ra,0x2
    80003754:	870080e7          	jalr	-1936(ra) # 80004fc0 <_ZN9BufferCPPD1Ev>
    80003758:	000a8513          	mv	a0,s5
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	62c080e7          	jalr	1580(ra) # 80001d88 <_ZdlPv>
    80003764:	000c0113          	mv	sp,s8
}
    80003768:	f8040113          	addi	sp,s0,-128
    8000376c:	07813083          	ld	ra,120(sp)
    80003770:	07013403          	ld	s0,112(sp)
    80003774:	06813483          	ld	s1,104(sp)
    80003778:	06013903          	ld	s2,96(sp)
    8000377c:	05813983          	ld	s3,88(sp)
    80003780:	05013a03          	ld	s4,80(sp)
    80003784:	04813a83          	ld	s5,72(sp)
    80003788:	04013b03          	ld	s6,64(sp)
    8000378c:	03813b83          	ld	s7,56(sp)
    80003790:	03013c03          	ld	s8,48(sp)
    80003794:	02813c83          	ld	s9,40(sp)
    80003798:	08010113          	addi	sp,sp,128
    8000379c:	00008067          	ret
    800037a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800037a4:	000a8513          	mv	a0,s5
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	5e0080e7          	jalr	1504(ra) # 80001d88 <_ZdlPv>
    800037b0:	00048513          	mv	a0,s1
    800037b4:	00008097          	auipc	ra,0x8
    800037b8:	d94080e7          	jalr	-620(ra) # 8000b548 <_Unwind_Resume>
    800037bc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800037c0:	00090513          	mv	a0,s2
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	5c4080e7          	jalr	1476(ra) # 80001d88 <_ZdlPv>
    800037cc:	00048513          	mv	a0,s1
    800037d0:	00008097          	auipc	ra,0x8
    800037d4:	d78080e7          	jalr	-648(ra) # 8000b548 <_Unwind_Resume>
    800037d8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800037dc:	000b8513          	mv	a0,s7
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	5a8080e7          	jalr	1448(ra) # 80001d88 <_ZdlPv>
    800037e8:	00048513          	mv	a0,s1
    800037ec:	00008097          	auipc	ra,0x8
    800037f0:	d5c080e7          	jalr	-676(ra) # 8000b548 <_Unwind_Resume>
    800037f4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800037f8:	00048513          	mv	a0,s1
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	58c080e7          	jalr	1420(ra) # 80001d88 <_ZdlPv>
    80003804:	00090513          	mv	a0,s2
    80003808:	00008097          	auipc	ra,0x8
    8000380c:	d40080e7          	jalr	-704(ra) # 8000b548 <_Unwind_Resume>
    80003810:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003814:	000c8513          	mv	a0,s9
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	570080e7          	jalr	1392(ra) # 80001d88 <_ZdlPv>
    80003820:	00048513          	mv	a0,s1
    80003824:	00008097          	auipc	ra,0x8
    80003828:	d24080e7          	jalr	-732(ra) # 8000b548 <_Unwind_Resume>

000000008000382c <_ZN8Consumer3runEv>:
    void run() override {
    8000382c:	fd010113          	addi	sp,sp,-48
    80003830:	02113423          	sd	ra,40(sp)
    80003834:	02813023          	sd	s0,32(sp)
    80003838:	00913c23          	sd	s1,24(sp)
    8000383c:	01213823          	sd	s2,16(sp)
    80003840:	01313423          	sd	s3,8(sp)
    80003844:	03010413          	addi	s0,sp,48
    80003848:	00050913          	mv	s2,a0
        int i = 0;
    8000384c:	00000993          	li	s3,0
    80003850:	0100006f          	j	80003860 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003854:	00a00513          	li	a0,10
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	830080e7          	jalr	-2000(ra) # 80002088 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003860:	00007797          	auipc	a5,0x7
    80003864:	be87a783          	lw	a5,-1048(a5) # 8000a448 <_ZL9threadEnd>
    80003868:	04079a63          	bnez	a5,800038bc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000386c:	02093783          	ld	a5,32(s2)
    80003870:	0087b503          	ld	a0,8(a5)
    80003874:	00001097          	auipc	ra,0x1
    80003878:	638080e7          	jalr	1592(ra) # 80004eac <_ZN9BufferCPP3getEv>
            i++;
    8000387c:	0019849b          	addiw	s1,s3,1
    80003880:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003884:	0ff57513          	andi	a0,a0,255
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	800080e7          	jalr	-2048(ra) # 80002088 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003890:	05000793          	li	a5,80
    80003894:	02f4e4bb          	remw	s1,s1,a5
    80003898:	fc0494e3          	bnez	s1,80003860 <_ZN8Consumer3runEv+0x34>
    8000389c:	fb9ff06f          	j	80003854 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800038a0:	02093783          	ld	a5,32(s2)
    800038a4:	0087b503          	ld	a0,8(a5)
    800038a8:	00001097          	auipc	ra,0x1
    800038ac:	604080e7          	jalr	1540(ra) # 80004eac <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800038b0:	0ff57513          	andi	a0,a0,255
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	7d4080e7          	jalr	2004(ra) # 80002088 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800038bc:	02093783          	ld	a5,32(s2)
    800038c0:	0087b503          	ld	a0,8(a5)
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	674080e7          	jalr	1652(ra) # 80004f38 <_ZN9BufferCPP6getCntEv>
    800038cc:	fca04ae3          	bgtz	a0,800038a0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800038d0:	02093783          	ld	a5,32(s2)
    800038d4:	0107b503          	ld	a0,16(a5)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	75c080e7          	jalr	1884(ra) # 80002034 <_ZN9Semaphore6signalEv>
    }
    800038e0:	02813083          	ld	ra,40(sp)
    800038e4:	02013403          	ld	s0,32(sp)
    800038e8:	01813483          	ld	s1,24(sp)
    800038ec:	01013903          	ld	s2,16(sp)
    800038f0:	00813983          	ld	s3,8(sp)
    800038f4:	03010113          	addi	sp,sp,48
    800038f8:	00008067          	ret

00000000800038fc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	01010413          	addi	s0,sp,16
    8000390c:	00007797          	auipc	a5,0x7
    80003910:	9e478793          	addi	a5,a5,-1564 # 8000a2f0 <_ZTV8Consumer+0x10>
    80003914:	00f53023          	sd	a5,0(a0)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	588080e7          	jalr	1416(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003920:	00813083          	ld	ra,8(sp)
    80003924:	00013403          	ld	s0,0(sp)
    80003928:	01010113          	addi	sp,sp,16
    8000392c:	00008067          	ret

0000000080003930 <_ZN8ConsumerD0Ev>:
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00113c23          	sd	ra,24(sp)
    80003938:	00813823          	sd	s0,16(sp)
    8000393c:	00913423          	sd	s1,8(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	00050493          	mv	s1,a0
    80003948:	00007797          	auipc	a5,0x7
    8000394c:	9a878793          	addi	a5,a5,-1624 # 8000a2f0 <_ZTV8Consumer+0x10>
    80003950:	00f53023          	sd	a5,0(a0)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	54c080e7          	jalr	1356(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    8000395c:	00048513          	mv	a0,s1
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	428080e7          	jalr	1064(ra) # 80001d88 <_ZdlPv>
    80003968:	01813083          	ld	ra,24(sp)
    8000396c:	01013403          	ld	s0,16(sp)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret

000000008000397c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00113423          	sd	ra,8(sp)
    80003984:	00813023          	sd	s0,0(sp)
    80003988:	01010413          	addi	s0,sp,16
    8000398c:	00007797          	auipc	a5,0x7
    80003990:	91478793          	addi	a5,a5,-1772 # 8000a2a0 <_ZTV16ProducerKeyborad+0x10>
    80003994:	00f53023          	sd	a5,0(a0)
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	508080e7          	jalr	1288(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    800039a0:	00813083          	ld	ra,8(sp)
    800039a4:	00013403          	ld	s0,0(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <_ZN16ProducerKeyboradD0Ev>:
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00113c23          	sd	ra,24(sp)
    800039b8:	00813823          	sd	s0,16(sp)
    800039bc:	00913423          	sd	s1,8(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	00050493          	mv	s1,a0
    800039c8:	00007797          	auipc	a5,0x7
    800039cc:	8d878793          	addi	a5,a5,-1832 # 8000a2a0 <_ZTV16ProducerKeyborad+0x10>
    800039d0:	00f53023          	sd	a5,0(a0)
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	4cc080e7          	jalr	1228(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    800039dc:	00048513          	mv	a0,s1
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	3a8080e7          	jalr	936(ra) # 80001d88 <_ZdlPv>
    800039e8:	01813083          	ld	ra,24(sp)
    800039ec:	01013403          	ld	s0,16(sp)
    800039f0:	00813483          	ld	s1,8(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret

00000000800039fc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    80003a0c:	00007797          	auipc	a5,0x7
    80003a10:	8bc78793          	addi	a5,a5,-1860 # 8000a2c8 <_ZTV8Producer+0x10>
    80003a14:	00f53023          	sd	a5,0(a0)
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	488080e7          	jalr	1160(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003a20:	00813083          	ld	ra,8(sp)
    80003a24:	00013403          	ld	s0,0(sp)
    80003a28:	01010113          	addi	sp,sp,16
    80003a2c:	00008067          	ret

0000000080003a30 <_ZN8ProducerD0Ev>:
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00113c23          	sd	ra,24(sp)
    80003a38:	00813823          	sd	s0,16(sp)
    80003a3c:	00913423          	sd	s1,8(sp)
    80003a40:	02010413          	addi	s0,sp,32
    80003a44:	00050493          	mv	s1,a0
    80003a48:	00007797          	auipc	a5,0x7
    80003a4c:	88078793          	addi	a5,a5,-1920 # 8000a2c8 <_ZTV8Producer+0x10>
    80003a50:	00f53023          	sd	a5,0(a0)
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	44c080e7          	jalr	1100(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80003a5c:	00048513          	mv	a0,s1
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	328080e7          	jalr	808(ra) # 80001d88 <_ZdlPv>
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	01013403          	ld	s0,16(sp)
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	02010113          	addi	sp,sp,32
    80003a78:	00008067          	ret

0000000080003a7c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	b38080e7          	jalr	-1224(ra) # 800015cc <_Z4getcv>
    80003a9c:	0005059b          	sext.w	a1,a0
    80003aa0:	01b00793          	li	a5,27
    80003aa4:	00f58c63          	beq	a1,a5,80003abc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003aa8:	0204b783          	ld	a5,32(s1)
    80003aac:	0087b503          	ld	a0,8(a5)
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	36c080e7          	jalr	876(ra) # 80004e1c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003ab8:	fddff06f          	j	80003a94 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003abc:	00100793          	li	a5,1
    80003ac0:	00007717          	auipc	a4,0x7
    80003ac4:	98f72423          	sw	a5,-1656(a4) # 8000a448 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ac8:	0204b783          	ld	a5,32(s1)
    80003acc:	02100593          	li	a1,33
    80003ad0:	0087b503          	ld	a0,8(a5)
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	348080e7          	jalr	840(ra) # 80004e1c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003adc:	0204b783          	ld	a5,32(s1)
    80003ae0:	0107b503          	ld	a0,16(a5)
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	550080e7          	jalr	1360(ra) # 80002034 <_ZN9Semaphore6signalEv>
    }
    80003aec:	01813083          	ld	ra,24(sp)
    80003af0:	01013403          	ld	s0,16(sp)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	02010113          	addi	sp,sp,32
    80003afc:	00008067          	ret

0000000080003b00 <_ZN8Producer3runEv>:
    void run() override {
    80003b00:	fe010113          	addi	sp,sp,-32
    80003b04:	00113c23          	sd	ra,24(sp)
    80003b08:	00813823          	sd	s0,16(sp)
    80003b0c:	00913423          	sd	s1,8(sp)
    80003b10:	01213023          	sd	s2,0(sp)
    80003b14:	02010413          	addi	s0,sp,32
    80003b18:	00050493          	mv	s1,a0
        int i = 0;
    80003b1c:	00000913          	li	s2,0
        while (!threadEnd) {
    80003b20:	00007797          	auipc	a5,0x7
    80003b24:	9287a783          	lw	a5,-1752(a5) # 8000a448 <_ZL9threadEnd>
    80003b28:	04079263          	bnez	a5,80003b6c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003b2c:	0204b783          	ld	a5,32(s1)
    80003b30:	0007a583          	lw	a1,0(a5)
    80003b34:	0305859b          	addiw	a1,a1,48
    80003b38:	0087b503          	ld	a0,8(a5)
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	2e0080e7          	jalr	736(ra) # 80004e1c <_ZN9BufferCPP3putEi>
            i++;
    80003b44:	0019071b          	addiw	a4,s2,1
    80003b48:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003b4c:	0204b783          	ld	a5,32(s1)
    80003b50:	0007a783          	lw	a5,0(a5)
    80003b54:	00e787bb          	addw	a5,a5,a4
    80003b58:	00500513          	li	a0,5
    80003b5c:	02a7e53b          	remw	a0,a5,a0
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	410080e7          	jalr	1040(ra) # 80001f70 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003b68:	fb9ff06f          	j	80003b20 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003b6c:	0204b783          	ld	a5,32(s1)
    80003b70:	0107b503          	ld	a0,16(a5)
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	4c0080e7          	jalr	1216(ra) # 80002034 <_ZN9Semaphore6signalEv>
    }
    80003b7c:	01813083          	ld	ra,24(sp)
    80003b80:	01013403          	ld	s0,16(sp)
    80003b84:	00813483          	ld	s1,8(sp)
    80003b88:	00013903          	ld	s2,0(sp)
    80003b8c:	02010113          	addi	sp,sp,32
    80003b90:	00008067          	ret

0000000080003b94 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b94:	fe010113          	addi	sp,sp,-32
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	00813823          	sd	s0,16(sp)
    80003ba0:	00913423          	sd	s1,8(sp)
    80003ba4:	01213023          	sd	s2,0(sp)
    80003ba8:	02010413          	addi	s0,sp,32
    80003bac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003bb0:	00100793          	li	a5,1
    80003bb4:	02a7f863          	bgeu	a5,a0,80003be4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003bb8:	00a00793          	li	a5,10
    80003bbc:	02f577b3          	remu	a5,a0,a5
    80003bc0:	02078e63          	beqz	a5,80003bfc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003bc4:	fff48513          	addi	a0,s1,-1
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	fcc080e7          	jalr	-52(ra) # 80003b94 <_ZL9fibonaccim>
    80003bd0:	00050913          	mv	s2,a0
    80003bd4:	ffe48513          	addi	a0,s1,-2
    80003bd8:	00000097          	auipc	ra,0x0
    80003bdc:	fbc080e7          	jalr	-68(ra) # 80003b94 <_ZL9fibonaccim>
    80003be0:	00a90533          	add	a0,s2,a0
}
    80003be4:	01813083          	ld	ra,24(sp)
    80003be8:	01013403          	ld	s0,16(sp)
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	00013903          	ld	s2,0(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	89c080e7          	jalr	-1892(ra) # 80001498 <_Z15thread_dispatchv>
    80003c04:	fc1ff06f          	j	80003bc4 <_ZL9fibonaccim+0x30>

0000000080003c08 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	01213023          	sd	s2,0(sp)
    80003c1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c20:	00a00493          	li	s1,10
    80003c24:	0400006f          	j	80003c64 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c28:	00004517          	auipc	a0,0x4
    80003c2c:	55850513          	addi	a0,a0,1368 # 80008180 <CONSOLE_STATUS+0x170>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	dc8080e7          	jalr	-568(ra) # 800049f8 <_Z11printStringPKc>
    80003c38:	00000613          	li	a2,0
    80003c3c:	00a00593          	li	a1,10
    80003c40:	00048513          	mv	a0,s1
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	f64080e7          	jalr	-156(ra) # 80004ba8 <_Z8printIntiii>
    80003c4c:	00004517          	auipc	a0,0x4
    80003c50:	76450513          	addi	a0,a0,1892 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	da4080e7          	jalr	-604(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c5c:	0014849b          	addiw	s1,s1,1
    80003c60:	0ff4f493          	andi	s1,s1,255
    80003c64:	00c00793          	li	a5,12
    80003c68:	fc97f0e3          	bgeu	a5,s1,80003c28 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003c6c:	00004517          	auipc	a0,0x4
    80003c70:	51c50513          	addi	a0,a0,1308 # 80008188 <CONSOLE_STATUS+0x178>
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	d84080e7          	jalr	-636(ra) # 800049f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c7c:	00500313          	li	t1,5
    thread_dispatch();
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	818080e7          	jalr	-2024(ra) # 80001498 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c88:	01000513          	li	a0,16
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	f08080e7          	jalr	-248(ra) # 80003b94 <_ZL9fibonaccim>
    80003c94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c98:	00004517          	auipc	a0,0x4
    80003c9c:	50050513          	addi	a0,a0,1280 # 80008198 <CONSOLE_STATUS+0x188>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	d58080e7          	jalr	-680(ra) # 800049f8 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	ef4080e7          	jalr	-268(ra) # 80004ba8 <_Z8printIntiii>
    80003cbc:	00004517          	auipc	a0,0x4
    80003cc0:	6f450513          	addi	a0,a0,1780 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	d34080e7          	jalr	-716(ra) # 800049f8 <_Z11printStringPKc>
    80003ccc:	0400006f          	j	80003d0c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003cd0:	00004517          	auipc	a0,0x4
    80003cd4:	4b050513          	addi	a0,a0,1200 # 80008180 <CONSOLE_STATUS+0x170>
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	d20080e7          	jalr	-736(ra) # 800049f8 <_Z11printStringPKc>
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	ebc080e7          	jalr	-324(ra) # 80004ba8 <_Z8printIntiii>
    80003cf4:	00004517          	auipc	a0,0x4
    80003cf8:	6bc50513          	addi	a0,a0,1724 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	cfc080e7          	jalr	-772(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	0ff4f493          	andi	s1,s1,255
    80003d0c:	00f00793          	li	a5,15
    80003d10:	fc97f0e3          	bgeu	a5,s1,80003cd0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003d14:	00004517          	auipc	a0,0x4
    80003d18:	49450513          	addi	a0,a0,1172 # 800081a8 <CONSOLE_STATUS+0x198>
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	cdc080e7          	jalr	-804(ra) # 800049f8 <_Z11printStringPKc>
    finishedD = true;
    80003d24:	00100793          	li	a5,1
    80003d28:	00006717          	auipc	a4,0x6
    80003d2c:	72f70823          	sb	a5,1840(a4) # 8000a458 <_ZL9finishedD>
    thread_dispatch();
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	768080e7          	jalr	1896(ra) # 80001498 <_Z15thread_dispatchv>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d68:	00000493          	li	s1,0
    80003d6c:	0400006f          	j	80003dac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003d70:	00004517          	auipc	a0,0x4
    80003d74:	3e050513          	addi	a0,a0,992 # 80008150 <CONSOLE_STATUS+0x140>
    80003d78:	00001097          	auipc	ra,0x1
    80003d7c:	c80080e7          	jalr	-896(ra) # 800049f8 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00001097          	auipc	ra,0x1
    80003d90:	e1c080e7          	jalr	-484(ra) # 80004ba8 <_Z8printIntiii>
    80003d94:	00004517          	auipc	a0,0x4
    80003d98:	61c50513          	addi	a0,a0,1564 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	c5c080e7          	jalr	-932(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003da4:	0014849b          	addiw	s1,s1,1
    80003da8:	0ff4f493          	andi	s1,s1,255
    80003dac:	00200793          	li	a5,2
    80003db0:	fc97f0e3          	bgeu	a5,s1,80003d70 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003db4:	00004517          	auipc	a0,0x4
    80003db8:	3a450513          	addi	a0,a0,932 # 80008158 <CONSOLE_STATUS+0x148>
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	c3c080e7          	jalr	-964(ra) # 800049f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003dc4:	00700313          	li	t1,7
    thread_dispatch();
    80003dc8:	ffffd097          	auipc	ra,0xffffd
    80003dcc:	6d0080e7          	jalr	1744(ra) # 80001498 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003dd0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003dd4:	00004517          	auipc	a0,0x4
    80003dd8:	39450513          	addi	a0,a0,916 # 80008168 <CONSOLE_STATUS+0x158>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	c1c080e7          	jalr	-996(ra) # 800049f8 <_Z11printStringPKc>
    80003de4:	00000613          	li	a2,0
    80003de8:	00a00593          	li	a1,10
    80003dec:	0009051b          	sext.w	a0,s2
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	db8080e7          	jalr	-584(ra) # 80004ba8 <_Z8printIntiii>
    80003df8:	00004517          	auipc	a0,0x4
    80003dfc:	5b850513          	addi	a0,a0,1464 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003e00:	00001097          	auipc	ra,0x1
    80003e04:	bf8080e7          	jalr	-1032(ra) # 800049f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003e08:	00c00513          	li	a0,12
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	d88080e7          	jalr	-632(ra) # 80003b94 <_ZL9fibonaccim>
    80003e14:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e18:	00004517          	auipc	a0,0x4
    80003e1c:	35850513          	addi	a0,a0,856 # 80008170 <CONSOLE_STATUS+0x160>
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	bd8080e7          	jalr	-1064(ra) # 800049f8 <_Z11printStringPKc>
    80003e28:	00000613          	li	a2,0
    80003e2c:	00a00593          	li	a1,10
    80003e30:	0009051b          	sext.w	a0,s2
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	d74080e7          	jalr	-652(ra) # 80004ba8 <_Z8printIntiii>
    80003e3c:	00004517          	auipc	a0,0x4
    80003e40:	57450513          	addi	a0,a0,1396 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	bb4080e7          	jalr	-1100(ra) # 800049f8 <_Z11printStringPKc>
    80003e4c:	0400006f          	j	80003e8c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003e50:	00004517          	auipc	a0,0x4
    80003e54:	30050513          	addi	a0,a0,768 # 80008150 <CONSOLE_STATUS+0x140>
    80003e58:	00001097          	auipc	ra,0x1
    80003e5c:	ba0080e7          	jalr	-1120(ra) # 800049f8 <_Z11printStringPKc>
    80003e60:	00000613          	li	a2,0
    80003e64:	00a00593          	li	a1,10
    80003e68:	00048513          	mv	a0,s1
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	d3c080e7          	jalr	-708(ra) # 80004ba8 <_Z8printIntiii>
    80003e74:	00004517          	auipc	a0,0x4
    80003e78:	53c50513          	addi	a0,a0,1340 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	b7c080e7          	jalr	-1156(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e84:	0014849b          	addiw	s1,s1,1
    80003e88:	0ff4f493          	andi	s1,s1,255
    80003e8c:	00500793          	li	a5,5
    80003e90:	fc97f0e3          	bgeu	a5,s1,80003e50 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003e94:	00004517          	auipc	a0,0x4
    80003e98:	38450513          	addi	a0,a0,900 # 80008218 <CONSOLE_STATUS+0x208>
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	b5c080e7          	jalr	-1188(ra) # 800049f8 <_Z11printStringPKc>
    finishedC = true;
    80003ea4:	00100793          	li	a5,1
    80003ea8:	00006717          	auipc	a4,0x6
    80003eac:	5af708a3          	sb	a5,1457(a4) # 8000a459 <_ZL9finishedC>
    thread_dispatch();
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	5e8080e7          	jalr	1512(ra) # 80001498 <_Z15thread_dispatchv>
}
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	01013403          	ld	s0,16(sp)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	00013903          	ld	s2,0(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret

0000000080003ed0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003ed0:	fe010113          	addi	sp,sp,-32
    80003ed4:	00113c23          	sd	ra,24(sp)
    80003ed8:	00813823          	sd	s0,16(sp)
    80003edc:	00913423          	sd	s1,8(sp)
    80003ee0:	01213023          	sd	s2,0(sp)
    80003ee4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003ee8:	00000913          	li	s2,0
    80003eec:	0380006f          	j	80003f24 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003ef0:	ffffd097          	auipc	ra,0xffffd
    80003ef4:	5a8080e7          	jalr	1448(ra) # 80001498 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ef8:	00148493          	addi	s1,s1,1
    80003efc:	000027b7          	lui	a5,0x2
    80003f00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f04:	0097ee63          	bltu	a5,s1,80003f20 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f08:	00000713          	li	a4,0
    80003f0c:	000077b7          	lui	a5,0x7
    80003f10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f14:	fce7eee3          	bltu	a5,a4,80003ef0 <_ZL11workerBodyBPv+0x20>
    80003f18:	00170713          	addi	a4,a4,1
    80003f1c:	ff1ff06f          	j	80003f0c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f20:	00190913          	addi	s2,s2,1
    80003f24:	00f00793          	li	a5,15
    80003f28:	0527e063          	bltu	a5,s2,80003f68 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f2c:	00004517          	auipc	a0,0x4
    80003f30:	20c50513          	addi	a0,a0,524 # 80008138 <CONSOLE_STATUS+0x128>
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	ac4080e7          	jalr	-1340(ra) # 800049f8 <_Z11printStringPKc>
    80003f3c:	00000613          	li	a2,0
    80003f40:	00a00593          	li	a1,10
    80003f44:	0009051b          	sext.w	a0,s2
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	c60080e7          	jalr	-928(ra) # 80004ba8 <_Z8printIntiii>
    80003f50:	00004517          	auipc	a0,0x4
    80003f54:	46050513          	addi	a0,a0,1120 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	aa0080e7          	jalr	-1376(ra) # 800049f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f60:	00000493          	li	s1,0
    80003f64:	f99ff06f          	j	80003efc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003f68:	00004517          	auipc	a0,0x4
    80003f6c:	1d850513          	addi	a0,a0,472 # 80008140 <CONSOLE_STATUS+0x130>
    80003f70:	00001097          	auipc	ra,0x1
    80003f74:	a88080e7          	jalr	-1400(ra) # 800049f8 <_Z11printStringPKc>
    finishedB = true;
    80003f78:	00100793          	li	a5,1
    80003f7c:	00006717          	auipc	a4,0x6
    80003f80:	4cf70f23          	sb	a5,1246(a4) # 8000a45a <_ZL9finishedB>
    thread_dispatch();
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	514080e7          	jalr	1300(ra) # 80001498 <_Z15thread_dispatchv>
}
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	00813483          	ld	s1,8(sp)
    80003f98:	00013903          	ld	s2,0(sp)
    80003f9c:	02010113          	addi	sp,sp,32
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003fa4:	fe010113          	addi	sp,sp,-32
    80003fa8:	00113c23          	sd	ra,24(sp)
    80003fac:	00813823          	sd	s0,16(sp)
    80003fb0:	00913423          	sd	s1,8(sp)
    80003fb4:	01213023          	sd	s2,0(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003fbc:	00000913          	li	s2,0
    80003fc0:	0380006f          	j	80003ff8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003fc4:	ffffd097          	auipc	ra,0xffffd
    80003fc8:	4d4080e7          	jalr	1236(ra) # 80001498 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fcc:	00148493          	addi	s1,s1,1
    80003fd0:	000027b7          	lui	a5,0x2
    80003fd4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fd8:	0097ee63          	bltu	a5,s1,80003ff4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fdc:	00000713          	li	a4,0
    80003fe0:	000077b7          	lui	a5,0x7
    80003fe4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003fe8:	fce7eee3          	bltu	a5,a4,80003fc4 <_ZL11workerBodyAPv+0x20>
    80003fec:	00170713          	addi	a4,a4,1
    80003ff0:	ff1ff06f          	j	80003fe0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ff4:	00190913          	addi	s2,s2,1
    80003ff8:	00900793          	li	a5,9
    80003ffc:	0527e063          	bltu	a5,s2,8000403c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004000:	00004517          	auipc	a0,0x4
    80004004:	12050513          	addi	a0,a0,288 # 80008120 <CONSOLE_STATUS+0x110>
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	9f0080e7          	jalr	-1552(ra) # 800049f8 <_Z11printStringPKc>
    80004010:	00000613          	li	a2,0
    80004014:	00a00593          	li	a1,10
    80004018:	0009051b          	sext.w	a0,s2
    8000401c:	00001097          	auipc	ra,0x1
    80004020:	b8c080e7          	jalr	-1140(ra) # 80004ba8 <_Z8printIntiii>
    80004024:	00004517          	auipc	a0,0x4
    80004028:	38c50513          	addi	a0,a0,908 # 800083b0 <CONSOLE_STATUS+0x3a0>
    8000402c:	00001097          	auipc	ra,0x1
    80004030:	9cc080e7          	jalr	-1588(ra) # 800049f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004034:	00000493          	li	s1,0
    80004038:	f99ff06f          	j	80003fd0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000403c:	00004517          	auipc	a0,0x4
    80004040:	0ec50513          	addi	a0,a0,236 # 80008128 <CONSOLE_STATUS+0x118>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	9b4080e7          	jalr	-1612(ra) # 800049f8 <_Z11printStringPKc>
    finishedA = true;
    8000404c:	00100793          	li	a5,1
    80004050:	00006717          	auipc	a4,0x6
    80004054:	40f705a3          	sb	a5,1035(a4) # 8000a45b <_ZL9finishedA>
}
    80004058:	01813083          	ld	ra,24(sp)
    8000405c:	01013403          	ld	s0,16(sp)
    80004060:	00813483          	ld	s1,8(sp)
    80004064:	00013903          	ld	s2,0(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret

0000000080004070 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004070:	fd010113          	addi	sp,sp,-48
    80004074:	02113423          	sd	ra,40(sp)
    80004078:	02813023          	sd	s0,32(sp)
    8000407c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004080:	00000613          	li	a2,0
    80004084:	00000597          	auipc	a1,0x0
    80004088:	f2058593          	addi	a1,a1,-224 # 80003fa4 <_ZL11workerBodyAPv>
    8000408c:	fd040513          	addi	a0,s0,-48
    80004090:	ffffd097          	auipc	ra,0xffffd
    80004094:	364080e7          	jalr	868(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004098:	00004517          	auipc	a0,0x4
    8000409c:	12050513          	addi	a0,a0,288 # 800081b8 <CONSOLE_STATUS+0x1a8>
    800040a0:	00001097          	auipc	ra,0x1
    800040a4:	958080e7          	jalr	-1704(ra) # 800049f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800040a8:	00000613          	li	a2,0
    800040ac:	00000597          	auipc	a1,0x0
    800040b0:	e2458593          	addi	a1,a1,-476 # 80003ed0 <_ZL11workerBodyBPv>
    800040b4:	fd840513          	addi	a0,s0,-40
    800040b8:	ffffd097          	auipc	ra,0xffffd
    800040bc:	33c080e7          	jalr	828(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800040c0:	00004517          	auipc	a0,0x4
    800040c4:	11050513          	addi	a0,a0,272 # 800081d0 <CONSOLE_STATUS+0x1c0>
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	930080e7          	jalr	-1744(ra) # 800049f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800040d0:	00000613          	li	a2,0
    800040d4:	00000597          	auipc	a1,0x0
    800040d8:	c7c58593          	addi	a1,a1,-900 # 80003d50 <_ZL11workerBodyCPv>
    800040dc:	fe040513          	addi	a0,s0,-32
    800040e0:	ffffd097          	auipc	ra,0xffffd
    800040e4:	314080e7          	jalr	788(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800040e8:	00004517          	auipc	a0,0x4
    800040ec:	10050513          	addi	a0,a0,256 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800040f0:	00001097          	auipc	ra,0x1
    800040f4:	908080e7          	jalr	-1784(ra) # 800049f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800040f8:	00000613          	li	a2,0
    800040fc:	00000597          	auipc	a1,0x0
    80004100:	b0c58593          	addi	a1,a1,-1268 # 80003c08 <_ZL11workerBodyDPv>
    80004104:	fe840513          	addi	a0,s0,-24
    80004108:	ffffd097          	auipc	ra,0xffffd
    8000410c:	2ec080e7          	jalr	748(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004110:	00004517          	auipc	a0,0x4
    80004114:	0f050513          	addi	a0,a0,240 # 80008200 <CONSOLE_STATUS+0x1f0>
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	8e0080e7          	jalr	-1824(ra) # 800049f8 <_Z11printStringPKc>
    80004120:	00c0006f          	j	8000412c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004124:	ffffd097          	auipc	ra,0xffffd
    80004128:	374080e7          	jalr	884(ra) # 80001498 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000412c:	00006797          	auipc	a5,0x6
    80004130:	32f7c783          	lbu	a5,815(a5) # 8000a45b <_ZL9finishedA>
    80004134:	fe0788e3          	beqz	a5,80004124 <_Z18Threads_C_API_testv+0xb4>
    80004138:	00006797          	auipc	a5,0x6
    8000413c:	3227c783          	lbu	a5,802(a5) # 8000a45a <_ZL9finishedB>
    80004140:	fe0782e3          	beqz	a5,80004124 <_Z18Threads_C_API_testv+0xb4>
    80004144:	00006797          	auipc	a5,0x6
    80004148:	3157c783          	lbu	a5,789(a5) # 8000a459 <_ZL9finishedC>
    8000414c:	fc078ce3          	beqz	a5,80004124 <_Z18Threads_C_API_testv+0xb4>
    80004150:	00006797          	auipc	a5,0x6
    80004154:	3087c783          	lbu	a5,776(a5) # 8000a458 <_ZL9finishedD>
    80004158:	fc0786e3          	beqz	a5,80004124 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000415c:	02813083          	ld	ra,40(sp)
    80004160:	02013403          	ld	s0,32(sp)
    80004164:	03010113          	addi	sp,sp,48
    80004168:	00008067          	ret

000000008000416c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000416c:	fd010113          	addi	sp,sp,-48
    80004170:	02113423          	sd	ra,40(sp)
    80004174:	02813023          	sd	s0,32(sp)
    80004178:	00913c23          	sd	s1,24(sp)
    8000417c:	01213823          	sd	s2,16(sp)
    80004180:	01313423          	sd	s3,8(sp)
    80004184:	03010413          	addi	s0,sp,48
    80004188:	00050993          	mv	s3,a0
    8000418c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004190:	00000913          	li	s2,0
    80004194:	00c0006f          	j	800041a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	db0080e7          	jalr	-592(ra) # 80001f48 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800041a0:	ffffd097          	auipc	ra,0xffffd
    800041a4:	42c080e7          	jalr	1068(ra) # 800015cc <_Z4getcv>
    800041a8:	0005059b          	sext.w	a1,a0
    800041ac:	01b00793          	li	a5,27
    800041b0:	02f58a63          	beq	a1,a5,800041e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800041b4:	0084b503          	ld	a0,8(s1)
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	c64080e7          	jalr	-924(ra) # 80004e1c <_ZN9BufferCPP3putEi>
        i++;
    800041c0:	0019071b          	addiw	a4,s2,1
    800041c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800041c8:	0004a683          	lw	a3,0(s1)
    800041cc:	0026979b          	slliw	a5,a3,0x2
    800041d0:	00d787bb          	addw	a5,a5,a3
    800041d4:	0017979b          	slliw	a5,a5,0x1
    800041d8:	02f767bb          	remw	a5,a4,a5
    800041dc:	fc0792e3          	bnez	a5,800041a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800041e0:	fb9ff06f          	j	80004198 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800041e4:	00100793          	li	a5,1
    800041e8:	00006717          	auipc	a4,0x6
    800041ec:	26f72c23          	sw	a5,632(a4) # 8000a460 <_ZL9threadEnd>
    td->buffer->put('!');
    800041f0:	0209b783          	ld	a5,32(s3)
    800041f4:	02100593          	li	a1,33
    800041f8:	0087b503          	ld	a0,8(a5)
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	c20080e7          	jalr	-992(ra) # 80004e1c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004204:	0104b503          	ld	a0,16(s1)
    80004208:	ffffe097          	auipc	ra,0xffffe
    8000420c:	e2c080e7          	jalr	-468(ra) # 80002034 <_ZN9Semaphore6signalEv>
}
    80004210:	02813083          	ld	ra,40(sp)
    80004214:	02013403          	ld	s0,32(sp)
    80004218:	01813483          	ld	s1,24(sp)
    8000421c:	01013903          	ld	s2,16(sp)
    80004220:	00813983          	ld	s3,8(sp)
    80004224:	03010113          	addi	sp,sp,48
    80004228:	00008067          	ret

000000008000422c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00113c23          	sd	ra,24(sp)
    80004234:	00813823          	sd	s0,16(sp)
    80004238:	00913423          	sd	s1,8(sp)
    8000423c:	01213023          	sd	s2,0(sp)
    80004240:	02010413          	addi	s0,sp,32
    80004244:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004248:	00000913          	li	s2,0
    8000424c:	00c0006f          	j	80004258 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	cf8080e7          	jalr	-776(ra) # 80001f48 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004258:	00006797          	auipc	a5,0x6
    8000425c:	2087a783          	lw	a5,520(a5) # 8000a460 <_ZL9threadEnd>
    80004260:	02079e63          	bnez	a5,8000429c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004264:	0004a583          	lw	a1,0(s1)
    80004268:	0305859b          	addiw	a1,a1,48
    8000426c:	0084b503          	ld	a0,8(s1)
    80004270:	00001097          	auipc	ra,0x1
    80004274:	bac080e7          	jalr	-1108(ra) # 80004e1c <_ZN9BufferCPP3putEi>
        i++;
    80004278:	0019071b          	addiw	a4,s2,1
    8000427c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004280:	0004a683          	lw	a3,0(s1)
    80004284:	0026979b          	slliw	a5,a3,0x2
    80004288:	00d787bb          	addw	a5,a5,a3
    8000428c:	0017979b          	slliw	a5,a5,0x1
    80004290:	02f767bb          	remw	a5,a4,a5
    80004294:	fc0792e3          	bnez	a5,80004258 <_ZN12ProducerSync8producerEPv+0x2c>
    80004298:	fb9ff06f          	j	80004250 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000429c:	0104b503          	ld	a0,16(s1)
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	d94080e7          	jalr	-620(ra) # 80002034 <_ZN9Semaphore6signalEv>
}
    800042a8:	01813083          	ld	ra,24(sp)
    800042ac:	01013403          	ld	s0,16(sp)
    800042b0:	00813483          	ld	s1,8(sp)
    800042b4:	00013903          	ld	s2,0(sp)
    800042b8:	02010113          	addi	sp,sp,32
    800042bc:	00008067          	ret

00000000800042c0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800042c0:	fd010113          	addi	sp,sp,-48
    800042c4:	02113423          	sd	ra,40(sp)
    800042c8:	02813023          	sd	s0,32(sp)
    800042cc:	00913c23          	sd	s1,24(sp)
    800042d0:	01213823          	sd	s2,16(sp)
    800042d4:	01313423          	sd	s3,8(sp)
    800042d8:	01413023          	sd	s4,0(sp)
    800042dc:	03010413          	addi	s0,sp,48
    800042e0:	00050993          	mv	s3,a0
    800042e4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800042e8:	00000a13          	li	s4,0
    800042ec:	01c0006f          	j	80004308 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	c58080e7          	jalr	-936(ra) # 80001f48 <_ZN6Thread8dispatchEv>
    800042f8:	0500006f          	j	80004348 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800042fc:	00a00513          	li	a0,10
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	2f4080e7          	jalr	756(ra) # 800015f4 <_Z4putcc>
    while (!threadEnd) {
    80004308:	00006797          	auipc	a5,0x6
    8000430c:	1587a783          	lw	a5,344(a5) # 8000a460 <_ZL9threadEnd>
    80004310:	06079263          	bnez	a5,80004374 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004314:	00893503          	ld	a0,8(s2)
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	b94080e7          	jalr	-1132(ra) # 80004eac <_ZN9BufferCPP3getEv>
        i++;
    80004320:	001a049b          	addiw	s1,s4,1
    80004324:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004328:	0ff57513          	andi	a0,a0,255
    8000432c:	ffffd097          	auipc	ra,0xffffd
    80004330:	2c8080e7          	jalr	712(ra) # 800015f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004334:	00092703          	lw	a4,0(s2)
    80004338:	0027179b          	slliw	a5,a4,0x2
    8000433c:	00e787bb          	addw	a5,a5,a4
    80004340:	02f4e7bb          	remw	a5,s1,a5
    80004344:	fa0786e3          	beqz	a5,800042f0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004348:	05000793          	li	a5,80
    8000434c:	02f4e4bb          	remw	s1,s1,a5
    80004350:	fa049ce3          	bnez	s1,80004308 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004354:	fa9ff06f          	j	800042fc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004358:	0209b783          	ld	a5,32(s3)
    8000435c:	0087b503          	ld	a0,8(a5)
    80004360:	00001097          	auipc	ra,0x1
    80004364:	b4c080e7          	jalr	-1204(ra) # 80004eac <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004368:	0ff57513          	andi	a0,a0,255
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	d1c080e7          	jalr	-740(ra) # 80002088 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004374:	0209b783          	ld	a5,32(s3)
    80004378:	0087b503          	ld	a0,8(a5)
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	bbc080e7          	jalr	-1092(ra) # 80004f38 <_ZN9BufferCPP6getCntEv>
    80004384:	fca04ae3          	bgtz	a0,80004358 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004388:	01093503          	ld	a0,16(s2)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	ca8080e7          	jalr	-856(ra) # 80002034 <_ZN9Semaphore6signalEv>
}
    80004394:	02813083          	ld	ra,40(sp)
    80004398:	02013403          	ld	s0,32(sp)
    8000439c:	01813483          	ld	s1,24(sp)
    800043a0:	01013903          	ld	s2,16(sp)
    800043a4:	00813983          	ld	s3,8(sp)
    800043a8:	00013a03          	ld	s4,0(sp)
    800043ac:	03010113          	addi	sp,sp,48
    800043b0:	00008067          	ret

00000000800043b4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800043b4:	f8010113          	addi	sp,sp,-128
    800043b8:	06113c23          	sd	ra,120(sp)
    800043bc:	06813823          	sd	s0,112(sp)
    800043c0:	06913423          	sd	s1,104(sp)
    800043c4:	07213023          	sd	s2,96(sp)
    800043c8:	05313c23          	sd	s3,88(sp)
    800043cc:	05413823          	sd	s4,80(sp)
    800043d0:	05513423          	sd	s5,72(sp)
    800043d4:	05613023          	sd	s6,64(sp)
    800043d8:	03713c23          	sd	s7,56(sp)
    800043dc:	03813823          	sd	s8,48(sp)
    800043e0:	03913423          	sd	s9,40(sp)
    800043e4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800043e8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800043ec:	00004517          	auipc	a0,0x4
    800043f0:	c4c50513          	addi	a0,a0,-948 # 80008038 <CONSOLE_STATUS+0x28>
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	604080e7          	jalr	1540(ra) # 800049f8 <_Z11printStringPKc>
    getString(input, 30);
    800043fc:	01e00593          	li	a1,30
    80004400:	f8040493          	addi	s1,s0,-128
    80004404:	00048513          	mv	a0,s1
    80004408:	00000097          	auipc	ra,0x0
    8000440c:	678080e7          	jalr	1656(ra) # 80004a80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004410:	00048513          	mv	a0,s1
    80004414:	00000097          	auipc	ra,0x0
    80004418:	744080e7          	jalr	1860(ra) # 80004b58 <_Z11stringToIntPKc>
    8000441c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004420:	00004517          	auipc	a0,0x4
    80004424:	c3850513          	addi	a0,a0,-968 # 80008058 <CONSOLE_STATUS+0x48>
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	5d0080e7          	jalr	1488(ra) # 800049f8 <_Z11printStringPKc>
    getString(input, 30);
    80004430:	01e00593          	li	a1,30
    80004434:	00048513          	mv	a0,s1
    80004438:	00000097          	auipc	ra,0x0
    8000443c:	648080e7          	jalr	1608(ra) # 80004a80 <_Z9getStringPci>
    n = stringToInt(input);
    80004440:	00048513          	mv	a0,s1
    80004444:	00000097          	auipc	ra,0x0
    80004448:	714080e7          	jalr	1812(ra) # 80004b58 <_Z11stringToIntPKc>
    8000444c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004450:	00004517          	auipc	a0,0x4
    80004454:	c2850513          	addi	a0,a0,-984 # 80008078 <CONSOLE_STATUS+0x68>
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	5a0080e7          	jalr	1440(ra) # 800049f8 <_Z11printStringPKc>
    80004460:	00000613          	li	a2,0
    80004464:	00a00593          	li	a1,10
    80004468:	00090513          	mv	a0,s2
    8000446c:	00000097          	auipc	ra,0x0
    80004470:	73c080e7          	jalr	1852(ra) # 80004ba8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004474:	00004517          	auipc	a0,0x4
    80004478:	c1c50513          	addi	a0,a0,-996 # 80008090 <CONSOLE_STATUS+0x80>
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	57c080e7          	jalr	1404(ra) # 800049f8 <_Z11printStringPKc>
    80004484:	00000613          	li	a2,0
    80004488:	00a00593          	li	a1,10
    8000448c:	00048513          	mv	a0,s1
    80004490:	00000097          	auipc	ra,0x0
    80004494:	718080e7          	jalr	1816(ra) # 80004ba8 <_Z8printIntiii>
    printString(".\n");
    80004498:	00004517          	auipc	a0,0x4
    8000449c:	c1050513          	addi	a0,a0,-1008 # 800080a8 <CONSOLE_STATUS+0x98>
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	558080e7          	jalr	1368(ra) # 800049f8 <_Z11printStringPKc>
    if(threadNum > n) {
    800044a8:	0324c463          	blt	s1,s2,800044d0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800044ac:	03205c63          	blez	s2,800044e4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800044b0:	03800513          	li	a0,56
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	884080e7          	jalr	-1916(ra) # 80001d38 <_Znwm>
    800044bc:	00050a93          	mv	s5,a0
    800044c0:	00048593          	mv	a1,s1
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	804080e7          	jalr	-2044(ra) # 80004cc8 <_ZN9BufferCPPC1Ei>
    800044cc:	0300006f          	j	800044fc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800044d0:	00004517          	auipc	a0,0x4
    800044d4:	be050513          	addi	a0,a0,-1056 # 800080b0 <CONSOLE_STATUS+0xa0>
    800044d8:	00000097          	auipc	ra,0x0
    800044dc:	520080e7          	jalr	1312(ra) # 800049f8 <_Z11printStringPKc>
        return;
    800044e0:	0140006f          	j	800044f4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044e4:	00004517          	auipc	a0,0x4
    800044e8:	c0c50513          	addi	a0,a0,-1012 # 800080f0 <CONSOLE_STATUS+0xe0>
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	50c080e7          	jalr	1292(ra) # 800049f8 <_Z11printStringPKc>
        return;
    800044f4:	000b8113          	mv	sp,s7
    800044f8:	2380006f          	j	80004730 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800044fc:	01000513          	li	a0,16
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	838080e7          	jalr	-1992(ra) # 80001d38 <_Znwm>
    80004508:	00050493          	mv	s1,a0
    8000450c:	00000593          	li	a1,0
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	ac0080e7          	jalr	-1344(ra) # 80001fd0 <_ZN9SemaphoreC1Ej>
    80004518:	00006797          	auipc	a5,0x6
    8000451c:	f497b823          	sd	s1,-176(a5) # 8000a468 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004520:	00391793          	slli	a5,s2,0x3
    80004524:	00f78793          	addi	a5,a5,15
    80004528:	ff07f793          	andi	a5,a5,-16
    8000452c:	40f10133          	sub	sp,sp,a5
    80004530:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004534:	0019071b          	addiw	a4,s2,1
    80004538:	00171793          	slli	a5,a4,0x1
    8000453c:	00e787b3          	add	a5,a5,a4
    80004540:	00379793          	slli	a5,a5,0x3
    80004544:	00f78793          	addi	a5,a5,15
    80004548:	ff07f793          	andi	a5,a5,-16
    8000454c:	40f10133          	sub	sp,sp,a5
    80004550:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004554:	00191c13          	slli	s8,s2,0x1
    80004558:	012c07b3          	add	a5,s8,s2
    8000455c:	00379793          	slli	a5,a5,0x3
    80004560:	00fa07b3          	add	a5,s4,a5
    80004564:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004568:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000456c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004570:	02800513          	li	a0,40
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	7c4080e7          	jalr	1988(ra) # 80001d38 <_Znwm>
    8000457c:	00050b13          	mv	s6,a0
    80004580:	012c0c33          	add	s8,s8,s2
    80004584:	003c1c13          	slli	s8,s8,0x3
    80004588:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	a0c080e7          	jalr	-1524(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80004594:	00006797          	auipc	a5,0x6
    80004598:	dd478793          	addi	a5,a5,-556 # 8000a368 <_ZTV12ConsumerSync+0x10>
    8000459c:	00fb3023          	sd	a5,0(s6)
    800045a0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800045a4:	000b0513          	mv	a0,s6
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	898080e7          	jalr	-1896(ra) # 80001e40 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800045b0:	00000493          	li	s1,0
    800045b4:	0380006f          	j	800045ec <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800045b8:	00006797          	auipc	a5,0x6
    800045bc:	d8878793          	addi	a5,a5,-632 # 8000a340 <_ZTV12ProducerSync+0x10>
    800045c0:	00fcb023          	sd	a5,0(s9)
    800045c4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800045c8:	00349793          	slli	a5,s1,0x3
    800045cc:	00f987b3          	add	a5,s3,a5
    800045d0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800045d4:	00349793          	slli	a5,s1,0x3
    800045d8:	00f987b3          	add	a5,s3,a5
    800045dc:	0007b503          	ld	a0,0(a5)
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	860080e7          	jalr	-1952(ra) # 80001e40 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800045e8:	0014849b          	addiw	s1,s1,1
    800045ec:	0b24d063          	bge	s1,s2,8000468c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800045f0:	00149793          	slli	a5,s1,0x1
    800045f4:	009787b3          	add	a5,a5,s1
    800045f8:	00379793          	slli	a5,a5,0x3
    800045fc:	00fa07b3          	add	a5,s4,a5
    80004600:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004604:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004608:	00006717          	auipc	a4,0x6
    8000460c:	e6073703          	ld	a4,-416(a4) # 8000a468 <_ZL10waitForAll>
    80004610:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004614:	02905863          	blez	s1,80004644 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004618:	02800513          	li	a0,40
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	71c080e7          	jalr	1820(ra) # 80001d38 <_Znwm>
    80004624:	00050c93          	mv	s9,a0
    80004628:	00149c13          	slli	s8,s1,0x1
    8000462c:	009c0c33          	add	s8,s8,s1
    80004630:	003c1c13          	slli	s8,s8,0x3
    80004634:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	960080e7          	jalr	-1696(ra) # 80001f98 <_ZN6ThreadC1Ev>
    80004640:	f79ff06f          	j	800045b8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004644:	02800513          	li	a0,40
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	6f0080e7          	jalr	1776(ra) # 80001d38 <_Znwm>
    80004650:	00050c93          	mv	s9,a0
    80004654:	00149c13          	slli	s8,s1,0x1
    80004658:	009c0c33          	add	s8,s8,s1
    8000465c:	003c1c13          	slli	s8,s8,0x3
    80004660:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	934080e7          	jalr	-1740(ra) # 80001f98 <_ZN6ThreadC1Ev>
    8000466c:	00006797          	auipc	a5,0x6
    80004670:	cac78793          	addi	a5,a5,-852 # 8000a318 <_ZTV16ProducerKeyboard+0x10>
    80004674:	00fcb023          	sd	a5,0(s9)
    80004678:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000467c:	00349793          	slli	a5,s1,0x3
    80004680:	00f987b3          	add	a5,s3,a5
    80004684:	0197b023          	sd	s9,0(a5)
    80004688:	f4dff06f          	j	800045d4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	8bc080e7          	jalr	-1860(ra) # 80001f48 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004694:	00000493          	li	s1,0
    80004698:	00994e63          	blt	s2,s1,800046b4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000469c:	00006517          	auipc	a0,0x6
    800046a0:	dcc53503          	ld	a0,-564(a0) # 8000a468 <_ZL10waitForAll>
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	964080e7          	jalr	-1692(ra) # 80002008 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800046ac:	0014849b          	addiw	s1,s1,1
    800046b0:	fe9ff06f          	j	80004698 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800046b4:	00000493          	li	s1,0
    800046b8:	0080006f          	j	800046c0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800046bc:	0014849b          	addiw	s1,s1,1
    800046c0:	0324d263          	bge	s1,s2,800046e4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800046c4:	00349793          	slli	a5,s1,0x3
    800046c8:	00f987b3          	add	a5,s3,a5
    800046cc:	0007b503          	ld	a0,0(a5)
    800046d0:	fe0506e3          	beqz	a0,800046bc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800046d4:	00053783          	ld	a5,0(a0)
    800046d8:	0087b783          	ld	a5,8(a5)
    800046dc:	000780e7          	jalr	a5
    800046e0:	fddff06f          	j	800046bc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800046e4:	000b0a63          	beqz	s6,800046f8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800046e8:	000b3783          	ld	a5,0(s6)
    800046ec:	0087b783          	ld	a5,8(a5)
    800046f0:	000b0513          	mv	a0,s6
    800046f4:	000780e7          	jalr	a5
    delete waitForAll;
    800046f8:	00006517          	auipc	a0,0x6
    800046fc:	d7053503          	ld	a0,-656(a0) # 8000a468 <_ZL10waitForAll>
    80004700:	00050863          	beqz	a0,80004710 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004704:	00053783          	ld	a5,0(a0)
    80004708:	0087b783          	ld	a5,8(a5)
    8000470c:	000780e7          	jalr	a5
    delete buffer;
    80004710:	000a8e63          	beqz	s5,8000472c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004714:	000a8513          	mv	a0,s5
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	8a8080e7          	jalr	-1880(ra) # 80004fc0 <_ZN9BufferCPPD1Ev>
    80004720:	000a8513          	mv	a0,s5
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	664080e7          	jalr	1636(ra) # 80001d88 <_ZdlPv>
    8000472c:	000b8113          	mv	sp,s7

}
    80004730:	f8040113          	addi	sp,s0,-128
    80004734:	07813083          	ld	ra,120(sp)
    80004738:	07013403          	ld	s0,112(sp)
    8000473c:	06813483          	ld	s1,104(sp)
    80004740:	06013903          	ld	s2,96(sp)
    80004744:	05813983          	ld	s3,88(sp)
    80004748:	05013a03          	ld	s4,80(sp)
    8000474c:	04813a83          	ld	s5,72(sp)
    80004750:	04013b03          	ld	s6,64(sp)
    80004754:	03813b83          	ld	s7,56(sp)
    80004758:	03013c03          	ld	s8,48(sp)
    8000475c:	02813c83          	ld	s9,40(sp)
    80004760:	08010113          	addi	sp,sp,128
    80004764:	00008067          	ret
    80004768:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000476c:	000a8513          	mv	a0,s5
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	618080e7          	jalr	1560(ra) # 80001d88 <_ZdlPv>
    80004778:	00048513          	mv	a0,s1
    8000477c:	00007097          	auipc	ra,0x7
    80004780:	dcc080e7          	jalr	-564(ra) # 8000b548 <_Unwind_Resume>
    80004784:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004788:	00048513          	mv	a0,s1
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	5fc080e7          	jalr	1532(ra) # 80001d88 <_ZdlPv>
    80004794:	00090513          	mv	a0,s2
    80004798:	00007097          	auipc	ra,0x7
    8000479c:	db0080e7          	jalr	-592(ra) # 8000b548 <_Unwind_Resume>
    800047a0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800047a4:	000b0513          	mv	a0,s6
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	5e0080e7          	jalr	1504(ra) # 80001d88 <_ZdlPv>
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00007097          	auipc	ra,0x7
    800047b8:	d94080e7          	jalr	-620(ra) # 8000b548 <_Unwind_Resume>
    800047bc:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800047c0:	000c8513          	mv	a0,s9
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	5c4080e7          	jalr	1476(ra) # 80001d88 <_ZdlPv>
    800047cc:	00048513          	mv	a0,s1
    800047d0:	00007097          	auipc	ra,0x7
    800047d4:	d78080e7          	jalr	-648(ra) # 8000b548 <_Unwind_Resume>
    800047d8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800047dc:	000c8513          	mv	a0,s9
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	5a8080e7          	jalr	1448(ra) # 80001d88 <_ZdlPv>
    800047e8:	00048513          	mv	a0,s1
    800047ec:	00007097          	auipc	ra,0x7
    800047f0:	d5c080e7          	jalr	-676(ra) # 8000b548 <_Unwind_Resume>

00000000800047f4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800047f4:	ff010113          	addi	sp,sp,-16
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	00813023          	sd	s0,0(sp)
    80004800:	01010413          	addi	s0,sp,16
    80004804:	00006797          	auipc	a5,0x6
    80004808:	b6478793          	addi	a5,a5,-1180 # 8000a368 <_ZTV12ConsumerSync+0x10>
    8000480c:	00f53023          	sd	a5,0(a0)
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	690080e7          	jalr	1680(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80004818:	00813083          	ld	ra,8(sp)
    8000481c:	00013403          	ld	s0,0(sp)
    80004820:	01010113          	addi	sp,sp,16
    80004824:	00008067          	ret

0000000080004828 <_ZN12ConsumerSyncD0Ev>:
    80004828:	fe010113          	addi	sp,sp,-32
    8000482c:	00113c23          	sd	ra,24(sp)
    80004830:	00813823          	sd	s0,16(sp)
    80004834:	00913423          	sd	s1,8(sp)
    80004838:	02010413          	addi	s0,sp,32
    8000483c:	00050493          	mv	s1,a0
    80004840:	00006797          	auipc	a5,0x6
    80004844:	b2878793          	addi	a5,a5,-1240 # 8000a368 <_ZTV12ConsumerSync+0x10>
    80004848:	00f53023          	sd	a5,0(a0)
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	654080e7          	jalr	1620(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80004854:	00048513          	mv	a0,s1
    80004858:	ffffd097          	auipc	ra,0xffffd
    8000485c:	530080e7          	jalr	1328(ra) # 80001d88 <_ZdlPv>
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	00813483          	ld	s1,8(sp)
    8000486c:	02010113          	addi	sp,sp,32
    80004870:	00008067          	ret

0000000080004874 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004874:	ff010113          	addi	sp,sp,-16
    80004878:	00113423          	sd	ra,8(sp)
    8000487c:	00813023          	sd	s0,0(sp)
    80004880:	01010413          	addi	s0,sp,16
    80004884:	00006797          	auipc	a5,0x6
    80004888:	abc78793          	addi	a5,a5,-1348 # 8000a340 <_ZTV12ProducerSync+0x10>
    8000488c:	00f53023          	sd	a5,0(a0)
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	610080e7          	jalr	1552(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80004898:	00813083          	ld	ra,8(sp)
    8000489c:	00013403          	ld	s0,0(sp)
    800048a0:	01010113          	addi	sp,sp,16
    800048a4:	00008067          	ret

00000000800048a8 <_ZN12ProducerSyncD0Ev>:
    800048a8:	fe010113          	addi	sp,sp,-32
    800048ac:	00113c23          	sd	ra,24(sp)
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	02010413          	addi	s0,sp,32
    800048bc:	00050493          	mv	s1,a0
    800048c0:	00006797          	auipc	a5,0x6
    800048c4:	a8078793          	addi	a5,a5,-1408 # 8000a340 <_ZTV12ProducerSync+0x10>
    800048c8:	00f53023          	sd	a5,0(a0)
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	5d4080e7          	jalr	1492(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    800048d4:	00048513          	mv	a0,s1
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	4b0080e7          	jalr	1200(ra) # 80001d88 <_ZdlPv>
    800048e0:	01813083          	ld	ra,24(sp)
    800048e4:	01013403          	ld	s0,16(sp)
    800048e8:	00813483          	ld	s1,8(sp)
    800048ec:	02010113          	addi	sp,sp,32
    800048f0:	00008067          	ret

00000000800048f4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800048f4:	ff010113          	addi	sp,sp,-16
    800048f8:	00113423          	sd	ra,8(sp)
    800048fc:	00813023          	sd	s0,0(sp)
    80004900:	01010413          	addi	s0,sp,16
    80004904:	00006797          	auipc	a5,0x6
    80004908:	a1478793          	addi	a5,a5,-1516 # 8000a318 <_ZTV16ProducerKeyboard+0x10>
    8000490c:	00f53023          	sd	a5,0(a0)
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	590080e7          	jalr	1424(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80004918:	00813083          	ld	ra,8(sp)
    8000491c:	00013403          	ld	s0,0(sp)
    80004920:	01010113          	addi	sp,sp,16
    80004924:	00008067          	ret

0000000080004928 <_ZN16ProducerKeyboardD0Ev>:
    80004928:	fe010113          	addi	sp,sp,-32
    8000492c:	00113c23          	sd	ra,24(sp)
    80004930:	00813823          	sd	s0,16(sp)
    80004934:	00913423          	sd	s1,8(sp)
    80004938:	02010413          	addi	s0,sp,32
    8000493c:	00050493          	mv	s1,a0
    80004940:	00006797          	auipc	a5,0x6
    80004944:	9d878793          	addi	a5,a5,-1576 # 8000a318 <_ZTV16ProducerKeyboard+0x10>
    80004948:	00f53023          	sd	a5,0(a0)
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	554080e7          	jalr	1364(ra) # 80001ea0 <_ZN6ThreadD1Ev>
    80004954:	00048513          	mv	a0,s1
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	430080e7          	jalr	1072(ra) # 80001d88 <_ZdlPv>
    80004960:	01813083          	ld	ra,24(sp)
    80004964:	01013403          	ld	s0,16(sp)
    80004968:	00813483          	ld	s1,8(sp)
    8000496c:	02010113          	addi	sp,sp,32
    80004970:	00008067          	ret

0000000080004974 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004974:	ff010113          	addi	sp,sp,-16
    80004978:	00113423          	sd	ra,8(sp)
    8000497c:	00813023          	sd	s0,0(sp)
    80004980:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004984:	02053583          	ld	a1,32(a0)
    80004988:	fffff097          	auipc	ra,0xfffff
    8000498c:	7e4080e7          	jalr	2020(ra) # 8000416c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004990:	00813083          	ld	ra,8(sp)
    80004994:	00013403          	ld	s0,0(sp)
    80004998:	01010113          	addi	sp,sp,16
    8000499c:	00008067          	ret

00000000800049a0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800049a0:	ff010113          	addi	sp,sp,-16
    800049a4:	00113423          	sd	ra,8(sp)
    800049a8:	00813023          	sd	s0,0(sp)
    800049ac:	01010413          	addi	s0,sp,16
        producer(td);
    800049b0:	02053583          	ld	a1,32(a0)
    800049b4:	00000097          	auipc	ra,0x0
    800049b8:	878080e7          	jalr	-1928(ra) # 8000422c <_ZN12ProducerSync8producerEPv>
    }
    800049bc:	00813083          	ld	ra,8(sp)
    800049c0:	00013403          	ld	s0,0(sp)
    800049c4:	01010113          	addi	sp,sp,16
    800049c8:	00008067          	ret

00000000800049cc <_ZN12ConsumerSync3runEv>:
    void run() override {
    800049cc:	ff010113          	addi	sp,sp,-16
    800049d0:	00113423          	sd	ra,8(sp)
    800049d4:	00813023          	sd	s0,0(sp)
    800049d8:	01010413          	addi	s0,sp,16
        consumer(td);
    800049dc:	02053583          	ld	a1,32(a0)
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	8e0080e7          	jalr	-1824(ra) # 800042c0 <_ZN12ConsumerSync8consumerEPv>
    }
    800049e8:	00813083          	ld	ra,8(sp)
    800049ec:	00013403          	ld	s0,0(sp)
    800049f0:	01010113          	addi	sp,sp,16
    800049f4:	00008067          	ret

00000000800049f8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800049f8:	fe010113          	addi	sp,sp,-32
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	02010413          	addi	s0,sp,32
    80004a0c:	00050493          	mv	s1,a0
    LOCK();
    80004a10:	00100613          	li	a2,1
    80004a14:	00000593          	li	a1,0
    80004a18:	00006517          	auipc	a0,0x6
    80004a1c:	a5850513          	addi	a0,a0,-1448 # 8000a470 <lockPrint>
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	92c080e7          	jalr	-1748(ra) # 8000134c <copy_and_swap>
    80004a28:	00050863          	beqz	a0,80004a38 <_Z11printStringPKc+0x40>
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	a6c080e7          	jalr	-1428(ra) # 80001498 <_Z15thread_dispatchv>
    80004a34:	fddff06f          	j	80004a10 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004a38:	0004c503          	lbu	a0,0(s1)
    80004a3c:	00050a63          	beqz	a0,80004a50 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004a40:	ffffd097          	auipc	ra,0xffffd
    80004a44:	bb4080e7          	jalr	-1100(ra) # 800015f4 <_Z4putcc>
        string++;
    80004a48:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004a4c:	fedff06f          	j	80004a38 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004a50:	00000613          	li	a2,0
    80004a54:	00100593          	li	a1,1
    80004a58:	00006517          	auipc	a0,0x6
    80004a5c:	a1850513          	addi	a0,a0,-1512 # 8000a470 <lockPrint>
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	8ec080e7          	jalr	-1812(ra) # 8000134c <copy_and_swap>
    80004a68:	fe0514e3          	bnez	a0,80004a50 <_Z11printStringPKc+0x58>
}
    80004a6c:	01813083          	ld	ra,24(sp)
    80004a70:	01013403          	ld	s0,16(sp)
    80004a74:	00813483          	ld	s1,8(sp)
    80004a78:	02010113          	addi	sp,sp,32
    80004a7c:	00008067          	ret

0000000080004a80 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004a80:	fd010113          	addi	sp,sp,-48
    80004a84:	02113423          	sd	ra,40(sp)
    80004a88:	02813023          	sd	s0,32(sp)
    80004a8c:	00913c23          	sd	s1,24(sp)
    80004a90:	01213823          	sd	s2,16(sp)
    80004a94:	01313423          	sd	s3,8(sp)
    80004a98:	01413023          	sd	s4,0(sp)
    80004a9c:	03010413          	addi	s0,sp,48
    80004aa0:	00050993          	mv	s3,a0
    80004aa4:	00058a13          	mv	s4,a1
    LOCK();
    80004aa8:	00100613          	li	a2,1
    80004aac:	00000593          	li	a1,0
    80004ab0:	00006517          	auipc	a0,0x6
    80004ab4:	9c050513          	addi	a0,a0,-1600 # 8000a470 <lockPrint>
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	894080e7          	jalr	-1900(ra) # 8000134c <copy_and_swap>
    80004ac0:	00050863          	beqz	a0,80004ad0 <_Z9getStringPci+0x50>
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	9d4080e7          	jalr	-1580(ra) # 80001498 <_Z15thread_dispatchv>
    80004acc:	fddff06f          	j	80004aa8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ad0:	00000913          	li	s2,0
    80004ad4:	00090493          	mv	s1,s2
    80004ad8:	0019091b          	addiw	s2,s2,1
    80004adc:	03495a63          	bge	s2,s4,80004b10 <_Z9getStringPci+0x90>
        cc = getc();
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	aec080e7          	jalr	-1300(ra) # 800015cc <_Z4getcv>
        if(cc < 1)
    80004ae8:	02050463          	beqz	a0,80004b10 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004aec:	009984b3          	add	s1,s3,s1
    80004af0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004af4:	00a00793          	li	a5,10
    80004af8:	00f50a63          	beq	a0,a5,80004b0c <_Z9getStringPci+0x8c>
    80004afc:	00d00793          	li	a5,13
    80004b00:	fcf51ae3          	bne	a0,a5,80004ad4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004b04:	00090493          	mv	s1,s2
    80004b08:	0080006f          	j	80004b10 <_Z9getStringPci+0x90>
    80004b0c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004b10:	009984b3          	add	s1,s3,s1
    80004b14:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004b18:	00000613          	li	a2,0
    80004b1c:	00100593          	li	a1,1
    80004b20:	00006517          	auipc	a0,0x6
    80004b24:	95050513          	addi	a0,a0,-1712 # 8000a470 <lockPrint>
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	824080e7          	jalr	-2012(ra) # 8000134c <copy_and_swap>
    80004b30:	fe0514e3          	bnez	a0,80004b18 <_Z9getStringPci+0x98>
    return buf;
}
    80004b34:	00098513          	mv	a0,s3
    80004b38:	02813083          	ld	ra,40(sp)
    80004b3c:	02013403          	ld	s0,32(sp)
    80004b40:	01813483          	ld	s1,24(sp)
    80004b44:	01013903          	ld	s2,16(sp)
    80004b48:	00813983          	ld	s3,8(sp)
    80004b4c:	00013a03          	ld	s4,0(sp)
    80004b50:	03010113          	addi	sp,sp,48
    80004b54:	00008067          	ret

0000000080004b58 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004b58:	ff010113          	addi	sp,sp,-16
    80004b5c:	00813423          	sd	s0,8(sp)
    80004b60:	01010413          	addi	s0,sp,16
    80004b64:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004b68:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004b6c:	0006c603          	lbu	a2,0(a3) # 8000 <_entry-0x7fff8000>
    80004b70:	fd06071b          	addiw	a4,a2,-48
    80004b74:	0ff77713          	andi	a4,a4,255
    80004b78:	00900793          	li	a5,9
    80004b7c:	02e7e063          	bltu	a5,a4,80004b9c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004b80:	0025179b          	slliw	a5,a0,0x2
    80004b84:	00a787bb          	addw	a5,a5,a0
    80004b88:	0017979b          	slliw	a5,a5,0x1
    80004b8c:	00168693          	addi	a3,a3,1
    80004b90:	00c787bb          	addw	a5,a5,a2
    80004b94:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004b98:	fd5ff06f          	j	80004b6c <_Z11stringToIntPKc+0x14>
    return n;
}
    80004b9c:	00813403          	ld	s0,8(sp)
    80004ba0:	01010113          	addi	sp,sp,16
    80004ba4:	00008067          	ret

0000000080004ba8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004ba8:	fc010113          	addi	sp,sp,-64
    80004bac:	02113c23          	sd	ra,56(sp)
    80004bb0:	02813823          	sd	s0,48(sp)
    80004bb4:	02913423          	sd	s1,40(sp)
    80004bb8:	03213023          	sd	s2,32(sp)
    80004bbc:	01313c23          	sd	s3,24(sp)
    80004bc0:	04010413          	addi	s0,sp,64
    80004bc4:	00050493          	mv	s1,a0
    80004bc8:	00058913          	mv	s2,a1
    80004bcc:	00060993          	mv	s3,a2
    LOCK();
    80004bd0:	00100613          	li	a2,1
    80004bd4:	00000593          	li	a1,0
    80004bd8:	00006517          	auipc	a0,0x6
    80004bdc:	89850513          	addi	a0,a0,-1896 # 8000a470 <lockPrint>
    80004be0:	ffffc097          	auipc	ra,0xffffc
    80004be4:	76c080e7          	jalr	1900(ra) # 8000134c <copy_and_swap>
    80004be8:	00050863          	beqz	a0,80004bf8 <_Z8printIntiii+0x50>
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	8ac080e7          	jalr	-1876(ra) # 80001498 <_Z15thread_dispatchv>
    80004bf4:	fddff06f          	j	80004bd0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004bf8:	00098463          	beqz	s3,80004c00 <_Z8printIntiii+0x58>
    80004bfc:	0804c463          	bltz	s1,80004c84 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004c00:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004c04:	00000593          	li	a1,0
    }

    i = 0;
    80004c08:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004c0c:	0009079b          	sext.w	a5,s2
    80004c10:	0325773b          	remuw	a4,a0,s2
    80004c14:	00048613          	mv	a2,s1
    80004c18:	0014849b          	addiw	s1,s1,1
    80004c1c:	02071693          	slli	a3,a4,0x20
    80004c20:	0206d693          	srli	a3,a3,0x20
    80004c24:	00005717          	auipc	a4,0x5
    80004c28:	75c70713          	addi	a4,a4,1884 # 8000a380 <digits>
    80004c2c:	00d70733          	add	a4,a4,a3
    80004c30:	00074683          	lbu	a3,0(a4)
    80004c34:	fd040713          	addi	a4,s0,-48
    80004c38:	00c70733          	add	a4,a4,a2
    80004c3c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004c40:	0005071b          	sext.w	a4,a0
    80004c44:	0325553b          	divuw	a0,a0,s2
    80004c48:	fcf772e3          	bgeu	a4,a5,80004c0c <_Z8printIntiii+0x64>
    if(neg)
    80004c4c:	00058c63          	beqz	a1,80004c64 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004c50:	fd040793          	addi	a5,s0,-48
    80004c54:	009784b3          	add	s1,a5,s1
    80004c58:	02d00793          	li	a5,45
    80004c5c:	fef48823          	sb	a5,-16(s1)
    80004c60:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004c64:	fff4849b          	addiw	s1,s1,-1
    80004c68:	0204c463          	bltz	s1,80004c90 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004c6c:	fd040793          	addi	a5,s0,-48
    80004c70:	009787b3          	add	a5,a5,s1
    80004c74:	ff07c503          	lbu	a0,-16(a5)
    80004c78:	ffffd097          	auipc	ra,0xffffd
    80004c7c:	97c080e7          	jalr	-1668(ra) # 800015f4 <_Z4putcc>
    80004c80:	fe5ff06f          	j	80004c64 <_Z8printIntiii+0xbc>
        x = -xx;
    80004c84:	4090053b          	negw	a0,s1
        neg = 1;
    80004c88:	00100593          	li	a1,1
        x = -xx;
    80004c8c:	f7dff06f          	j	80004c08 <_Z8printIntiii+0x60>

    UNLOCK();
    80004c90:	00000613          	li	a2,0
    80004c94:	00100593          	li	a1,1
    80004c98:	00005517          	auipc	a0,0x5
    80004c9c:	7d850513          	addi	a0,a0,2008 # 8000a470 <lockPrint>
    80004ca0:	ffffc097          	auipc	ra,0xffffc
    80004ca4:	6ac080e7          	jalr	1708(ra) # 8000134c <copy_and_swap>
    80004ca8:	fe0514e3          	bnez	a0,80004c90 <_Z8printIntiii+0xe8>
    80004cac:	03813083          	ld	ra,56(sp)
    80004cb0:	03013403          	ld	s0,48(sp)
    80004cb4:	02813483          	ld	s1,40(sp)
    80004cb8:	02013903          	ld	s2,32(sp)
    80004cbc:	01813983          	ld	s3,24(sp)
    80004cc0:	04010113          	addi	sp,sp,64
    80004cc4:	00008067          	ret

0000000080004cc8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004cc8:	fd010113          	addi	sp,sp,-48
    80004ccc:	02113423          	sd	ra,40(sp)
    80004cd0:	02813023          	sd	s0,32(sp)
    80004cd4:	00913c23          	sd	s1,24(sp)
    80004cd8:	01213823          	sd	s2,16(sp)
    80004cdc:	01313423          	sd	s3,8(sp)
    80004ce0:	03010413          	addi	s0,sp,48
    80004ce4:	00050493          	mv	s1,a0
    80004ce8:	00058913          	mv	s2,a1
    80004cec:	0015879b          	addiw	a5,a1,1
    80004cf0:	0007851b          	sext.w	a0,a5
    80004cf4:	00f4a023          	sw	a5,0(s1)
    80004cf8:	0004a823          	sw	zero,16(s1)
    80004cfc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004d00:	00251513          	slli	a0,a0,0x2
    80004d04:	ffffc097          	auipc	ra,0xffffc
    80004d08:	668080e7          	jalr	1640(ra) # 8000136c <_Z9mem_allocm>
    80004d0c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004d10:	01000513          	li	a0,16
    80004d14:	ffffd097          	auipc	ra,0xffffd
    80004d18:	024080e7          	jalr	36(ra) # 80001d38 <_Znwm>
    80004d1c:	00050993          	mv	s3,a0
    80004d20:	00000593          	li	a1,0
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	2ac080e7          	jalr	684(ra) # 80001fd0 <_ZN9SemaphoreC1Ej>
    80004d2c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004d30:	01000513          	li	a0,16
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	004080e7          	jalr	4(ra) # 80001d38 <_Znwm>
    80004d3c:	00050993          	mv	s3,a0
    80004d40:	00090593          	mv	a1,s2
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	28c080e7          	jalr	652(ra) # 80001fd0 <_ZN9SemaphoreC1Ej>
    80004d4c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004d50:	01000513          	li	a0,16
    80004d54:	ffffd097          	auipc	ra,0xffffd
    80004d58:	fe4080e7          	jalr	-28(ra) # 80001d38 <_Znwm>
    80004d5c:	00050913          	mv	s2,a0
    80004d60:	00100593          	li	a1,1
    80004d64:	ffffd097          	auipc	ra,0xffffd
    80004d68:	26c080e7          	jalr	620(ra) # 80001fd0 <_ZN9SemaphoreC1Ej>
    80004d6c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004d70:	01000513          	li	a0,16
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	fc4080e7          	jalr	-60(ra) # 80001d38 <_Znwm>
    80004d7c:	00050913          	mv	s2,a0
    80004d80:	00100593          	li	a1,1
    80004d84:	ffffd097          	auipc	ra,0xffffd
    80004d88:	24c080e7          	jalr	588(ra) # 80001fd0 <_ZN9SemaphoreC1Ej>
    80004d8c:	0324b823          	sd	s2,48(s1)
}
    80004d90:	02813083          	ld	ra,40(sp)
    80004d94:	02013403          	ld	s0,32(sp)
    80004d98:	01813483          	ld	s1,24(sp)
    80004d9c:	01013903          	ld	s2,16(sp)
    80004da0:	00813983          	ld	s3,8(sp)
    80004da4:	03010113          	addi	sp,sp,48
    80004da8:	00008067          	ret
    80004dac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004db0:	00098513          	mv	a0,s3
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	fd4080e7          	jalr	-44(ra) # 80001d88 <_ZdlPv>
    80004dbc:	00048513          	mv	a0,s1
    80004dc0:	00006097          	auipc	ra,0x6
    80004dc4:	788080e7          	jalr	1928(ra) # 8000b548 <_Unwind_Resume>
    80004dc8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004dcc:	00098513          	mv	a0,s3
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	fb8080e7          	jalr	-72(ra) # 80001d88 <_ZdlPv>
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00006097          	auipc	ra,0x6
    80004de0:	76c080e7          	jalr	1900(ra) # 8000b548 <_Unwind_Resume>
    80004de4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004de8:	00090513          	mv	a0,s2
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	f9c080e7          	jalr	-100(ra) # 80001d88 <_ZdlPv>
    80004df4:	00048513          	mv	a0,s1
    80004df8:	00006097          	auipc	ra,0x6
    80004dfc:	750080e7          	jalr	1872(ra) # 8000b548 <_Unwind_Resume>
    80004e00:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004e04:	00090513          	mv	a0,s2
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	f80080e7          	jalr	-128(ra) # 80001d88 <_ZdlPv>
    80004e10:	00048513          	mv	a0,s1
    80004e14:	00006097          	auipc	ra,0x6
    80004e18:	734080e7          	jalr	1844(ra) # 8000b548 <_Unwind_Resume>

0000000080004e1c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004e1c:	fe010113          	addi	sp,sp,-32
    80004e20:	00113c23          	sd	ra,24(sp)
    80004e24:	00813823          	sd	s0,16(sp)
    80004e28:	00913423          	sd	s1,8(sp)
    80004e2c:	01213023          	sd	s2,0(sp)
    80004e30:	02010413          	addi	s0,sp,32
    80004e34:	00050493          	mv	s1,a0
    80004e38:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004e3c:	01853503          	ld	a0,24(a0)
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	1c8080e7          	jalr	456(ra) # 80002008 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004e48:	0304b503          	ld	a0,48(s1)
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	1bc080e7          	jalr	444(ra) # 80002008 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004e54:	0084b783          	ld	a5,8(s1)
    80004e58:	0144a703          	lw	a4,20(s1)
    80004e5c:	00271713          	slli	a4,a4,0x2
    80004e60:	00e787b3          	add	a5,a5,a4
    80004e64:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004e68:	0144a783          	lw	a5,20(s1)
    80004e6c:	0017879b          	addiw	a5,a5,1
    80004e70:	0004a703          	lw	a4,0(s1)
    80004e74:	02e7e7bb          	remw	a5,a5,a4
    80004e78:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004e7c:	0304b503          	ld	a0,48(s1)
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	1b4080e7          	jalr	436(ra) # 80002034 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004e88:	0204b503          	ld	a0,32(s1)
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	1a8080e7          	jalr	424(ra) # 80002034 <_ZN9Semaphore6signalEv>

}
    80004e94:	01813083          	ld	ra,24(sp)
    80004e98:	01013403          	ld	s0,16(sp)
    80004e9c:	00813483          	ld	s1,8(sp)
    80004ea0:	00013903          	ld	s2,0(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret

0000000080004eac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00113c23          	sd	ra,24(sp)
    80004eb4:	00813823          	sd	s0,16(sp)
    80004eb8:	00913423          	sd	s1,8(sp)
    80004ebc:	01213023          	sd	s2,0(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    80004ec4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004ec8:	02053503          	ld	a0,32(a0)
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	13c080e7          	jalr	316(ra) # 80002008 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004ed4:	0284b503          	ld	a0,40(s1)
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	130080e7          	jalr	304(ra) # 80002008 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004ee0:	0084b703          	ld	a4,8(s1)
    80004ee4:	0104a783          	lw	a5,16(s1)
    80004ee8:	00279693          	slli	a3,a5,0x2
    80004eec:	00d70733          	add	a4,a4,a3
    80004ef0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004ef4:	0017879b          	addiw	a5,a5,1
    80004ef8:	0004a703          	lw	a4,0(s1)
    80004efc:	02e7e7bb          	remw	a5,a5,a4
    80004f00:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004f04:	0284b503          	ld	a0,40(s1)
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	12c080e7          	jalr	300(ra) # 80002034 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004f10:	0184b503          	ld	a0,24(s1)
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	120080e7          	jalr	288(ra) # 80002034 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f1c:	00090513          	mv	a0,s2
    80004f20:	01813083          	ld	ra,24(sp)
    80004f24:	01013403          	ld	s0,16(sp)
    80004f28:	00813483          	ld	s1,8(sp)
    80004f2c:	00013903          	ld	s2,0(sp)
    80004f30:	02010113          	addi	sp,sp,32
    80004f34:	00008067          	ret

0000000080004f38 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004f38:	fe010113          	addi	sp,sp,-32
    80004f3c:	00113c23          	sd	ra,24(sp)
    80004f40:	00813823          	sd	s0,16(sp)
    80004f44:	00913423          	sd	s1,8(sp)
    80004f48:	01213023          	sd	s2,0(sp)
    80004f4c:	02010413          	addi	s0,sp,32
    80004f50:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004f54:	02853503          	ld	a0,40(a0)
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	0b0080e7          	jalr	176(ra) # 80002008 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004f60:	0304b503          	ld	a0,48(s1)
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	0a4080e7          	jalr	164(ra) # 80002008 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004f6c:	0144a783          	lw	a5,20(s1)
    80004f70:	0104a903          	lw	s2,16(s1)
    80004f74:	0327ce63          	blt	a5,s2,80004fb0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004f78:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004f7c:	0304b503          	ld	a0,48(s1)
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	0b4080e7          	jalr	180(ra) # 80002034 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004f88:	0284b503          	ld	a0,40(s1)
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	0a8080e7          	jalr	168(ra) # 80002034 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f94:	00090513          	mv	a0,s2
    80004f98:	01813083          	ld	ra,24(sp)
    80004f9c:	01013403          	ld	s0,16(sp)
    80004fa0:	00813483          	ld	s1,8(sp)
    80004fa4:	00013903          	ld	s2,0(sp)
    80004fa8:	02010113          	addi	sp,sp,32
    80004fac:	00008067          	ret
        ret = cap - head + tail;
    80004fb0:	0004a703          	lw	a4,0(s1)
    80004fb4:	4127093b          	subw	s2,a4,s2
    80004fb8:	00f9093b          	addw	s2,s2,a5
    80004fbc:	fc1ff06f          	j	80004f7c <_ZN9BufferCPP6getCntEv+0x44>

0000000080004fc0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004fc0:	fe010113          	addi	sp,sp,-32
    80004fc4:	00113c23          	sd	ra,24(sp)
    80004fc8:	00813823          	sd	s0,16(sp)
    80004fcc:	00913423          	sd	s1,8(sp)
    80004fd0:	02010413          	addi	s0,sp,32
    80004fd4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004fd8:	00a00513          	li	a0,10
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	0ac080e7          	jalr	172(ra) # 80002088 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004fe4:	00003517          	auipc	a0,0x3
    80004fe8:	24450513          	addi	a0,a0,580 # 80008228 <CONSOLE_STATUS+0x218>
    80004fec:	00000097          	auipc	ra,0x0
    80004ff0:	a0c080e7          	jalr	-1524(ra) # 800049f8 <_Z11printStringPKc>
    while (getCnt()) {
    80004ff4:	00048513          	mv	a0,s1
    80004ff8:	00000097          	auipc	ra,0x0
    80004ffc:	f40080e7          	jalr	-192(ra) # 80004f38 <_ZN9BufferCPP6getCntEv>
    80005000:	02050c63          	beqz	a0,80005038 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005004:	0084b783          	ld	a5,8(s1)
    80005008:	0104a703          	lw	a4,16(s1)
    8000500c:	00271713          	slli	a4,a4,0x2
    80005010:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005014:	0007c503          	lbu	a0,0(a5)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	070080e7          	jalr	112(ra) # 80002088 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005020:	0104a783          	lw	a5,16(s1)
    80005024:	0017879b          	addiw	a5,a5,1
    80005028:	0004a703          	lw	a4,0(s1)
    8000502c:	02e7e7bb          	remw	a5,a5,a4
    80005030:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005034:	fc1ff06f          	j	80004ff4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005038:	02100513          	li	a0,33
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	04c080e7          	jalr	76(ra) # 80002088 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005044:	00a00513          	li	a0,10
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	040080e7          	jalr	64(ra) # 80002088 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005050:	0084b503          	ld	a0,8(s1)
    80005054:	ffffc097          	auipc	ra,0xffffc
    80005058:	354080e7          	jalr	852(ra) # 800013a8 <_Z8mem_freePv>
    delete itemAvailable;
    8000505c:	0204b503          	ld	a0,32(s1)
    80005060:	00050863          	beqz	a0,80005070 <_ZN9BufferCPPD1Ev+0xb0>
    80005064:	00053783          	ld	a5,0(a0)
    80005068:	0087b783          	ld	a5,8(a5)
    8000506c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005070:	0184b503          	ld	a0,24(s1)
    80005074:	00050863          	beqz	a0,80005084 <_ZN9BufferCPPD1Ev+0xc4>
    80005078:	00053783          	ld	a5,0(a0)
    8000507c:	0087b783          	ld	a5,8(a5)
    80005080:	000780e7          	jalr	a5
    delete mutexTail;
    80005084:	0304b503          	ld	a0,48(s1)
    80005088:	00050863          	beqz	a0,80005098 <_ZN9BufferCPPD1Ev+0xd8>
    8000508c:	00053783          	ld	a5,0(a0)
    80005090:	0087b783          	ld	a5,8(a5)
    80005094:	000780e7          	jalr	a5
    delete mutexHead;
    80005098:	0284b503          	ld	a0,40(s1)
    8000509c:	00050863          	beqz	a0,800050ac <_ZN9BufferCPPD1Ev+0xec>
    800050a0:	00053783          	ld	a5,0(a0)
    800050a4:	0087b783          	ld	a5,8(a5)
    800050a8:	000780e7          	jalr	a5
}
    800050ac:	01813083          	ld	ra,24(sp)
    800050b0:	01013403          	ld	s0,16(sp)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	01213023          	sd	s2,0(sp)
    800050d4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800050d8:	00003517          	auipc	a0,0x3
    800050dc:	16850513          	addi	a0,a0,360 # 80008240 <CONSOLE_STATUS+0x230>
    800050e0:	00000097          	auipc	ra,0x0
    800050e4:	918080e7          	jalr	-1768(ra) # 800049f8 <_Z11printStringPKc>
    int test = getc() - '0';
    800050e8:	ffffc097          	auipc	ra,0xffffc
    800050ec:	4e4080e7          	jalr	1252(ra) # 800015cc <_Z4getcv>
    800050f0:	00050913          	mv	s2,a0
    800050f4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800050f8:	ffffc097          	auipc	ra,0xffffc
    800050fc:	4d4080e7          	jalr	1236(ra) # 800015cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005100:	fcb9091b          	addiw	s2,s2,-53
    80005104:	00100793          	li	a5,1
    80005108:	0327f463          	bgeu	a5,s2,80005130 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000510c:	00700793          	li	a5,7
    80005110:	0e97e263          	bltu	a5,s1,800051f4 <_Z8userMainv+0x134>
    80005114:	00249493          	slli	s1,s1,0x2
    80005118:	00003717          	auipc	a4,0x3
    8000511c:	34070713          	addi	a4,a4,832 # 80008458 <CONSOLE_STATUS+0x448>
    80005120:	00e484b3          	add	s1,s1,a4
    80005124:	0004a783          	lw	a5,0(s1)
    80005128:	00e787b3          	add	a5,a5,a4
    8000512c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005130:	00003517          	auipc	a0,0x3
    80005134:	13050513          	addi	a0,a0,304 # 80008260 <CONSOLE_STATUS+0x250>
    80005138:	00000097          	auipc	ra,0x0
    8000513c:	8c0080e7          	jalr	-1856(ra) # 800049f8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005140:	01813083          	ld	ra,24(sp)
    80005144:	01013403          	ld	s0,16(sp)
    80005148:	00813483          	ld	s1,8(sp)
    8000514c:	00013903          	ld	s2,0(sp)
    80005150:	02010113          	addi	sp,sp,32
    80005154:	00008067          	ret
            Threads_C_API_test();
    80005158:	fffff097          	auipc	ra,0xfffff
    8000515c:	f18080e7          	jalr	-232(ra) # 80004070 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005160:	00003517          	auipc	a0,0x3
    80005164:	13050513          	addi	a0,a0,304 # 80008290 <CONSOLE_STATUS+0x280>
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	890080e7          	jalr	-1904(ra) # 800049f8 <_Z11printStringPKc>
            break;
    80005170:	fd1ff06f          	j	80005140 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005174:	ffffe097          	auipc	ra,0xffffe
    80005178:	ddc080e7          	jalr	-548(ra) # 80002f50 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000517c:	00003517          	auipc	a0,0x3
    80005180:	15450513          	addi	a0,a0,340 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80005184:	00000097          	auipc	ra,0x0
    80005188:	874080e7          	jalr	-1932(ra) # 800049f8 <_Z11printStringPKc>
            break;
    8000518c:	fb5ff06f          	j	80005140 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005190:	ffffd097          	auipc	ra,0xffffd
    80005194:	614080e7          	jalr	1556(ra) # 800027a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005198:	00003517          	auipc	a0,0x3
    8000519c:	17850513          	addi	a0,a0,376 # 80008310 <CONSOLE_STATUS+0x300>
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	858080e7          	jalr	-1960(ra) # 800049f8 <_Z11printStringPKc>
            break;
    800051a8:	f99ff06f          	j	80005140 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800051ac:	fffff097          	auipc	ra,0xfffff
    800051b0:	208080e7          	jalr	520(ra) # 800043b4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800051b4:	00003517          	auipc	a0,0x3
    800051b8:	1ac50513          	addi	a0,a0,428 # 80008360 <CONSOLE_STATUS+0x350>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	83c080e7          	jalr	-1988(ra) # 800049f8 <_Z11printStringPKc>
            break;
    800051c4:	f7dff06f          	j	80005140 <_Z8userMainv+0x80>
            System_Mode_test();
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	658080e7          	jalr	1624(ra) # 80005820 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800051d0:	00003517          	auipc	a0,0x3
    800051d4:	1e850513          	addi	a0,a0,488 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	820080e7          	jalr	-2016(ra) # 800049f8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800051e0:	00003517          	auipc	a0,0x3
    800051e4:	1f850513          	addi	a0,a0,504 # 800083d8 <CONSOLE_STATUS+0x3c8>
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	810080e7          	jalr	-2032(ra) # 800049f8 <_Z11printStringPKc>
            break;
    800051f0:	f51ff06f          	j	80005140 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800051f4:	00003517          	auipc	a0,0x3
    800051f8:	23c50513          	addi	a0,a0,572 # 80008430 <CONSOLE_STATUS+0x420>
    800051fc:	fffff097          	auipc	ra,0xfffff
    80005200:	7fc080e7          	jalr	2044(ra) # 800049f8 <_Z11printStringPKc>
    80005204:	f3dff06f          	j	80005140 <_Z8userMainv+0x80>

0000000080005208 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005208:	fe010113          	addi	sp,sp,-32
    8000520c:	00113c23          	sd	ra,24(sp)
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00913423          	sd	s1,8(sp)
    80005218:	01213023          	sd	s2,0(sp)
    8000521c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005220:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005224:	00600493          	li	s1,6
    while (--i > 0) {
    80005228:	fff4849b          	addiw	s1,s1,-1
    8000522c:	04905463          	blez	s1,80005274 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005230:	00003517          	auipc	a0,0x3
    80005234:	24850513          	addi	a0,a0,584 # 80008478 <CONSOLE_STATUS+0x468>
    80005238:	fffff097          	auipc	ra,0xfffff
    8000523c:	7c0080e7          	jalr	1984(ra) # 800049f8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005240:	00000613          	li	a2,0
    80005244:	00a00593          	li	a1,10
    80005248:	0009051b          	sext.w	a0,s2
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	95c080e7          	jalr	-1700(ra) # 80004ba8 <_Z8printIntiii>
        printString(" !\n");
    80005254:	00003517          	auipc	a0,0x3
    80005258:	22c50513          	addi	a0,a0,556 # 80008480 <CONSOLE_STATUS+0x470>
    8000525c:	fffff097          	auipc	ra,0xfffff
    80005260:	79c080e7          	jalr	1948(ra) # 800049f8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005264:	00090513          	mv	a0,s2
    80005268:	ffffc097          	auipc	ra,0xffffc
    8000526c:	328080e7          	jalr	808(ra) # 80001590 <_Z10time_sleepm>
    while (--i > 0) {
    80005270:	fb9ff06f          	j	80005228 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005274:	00a00793          	li	a5,10
    80005278:	02f95933          	divu	s2,s2,a5
    8000527c:	fff90913          	addi	s2,s2,-1
    80005280:	00005797          	auipc	a5,0x5
    80005284:	1f878793          	addi	a5,a5,504 # 8000a478 <_ZL8finished>
    80005288:	01278933          	add	s2,a5,s2
    8000528c:	00100793          	li	a5,1
    80005290:	00f90023          	sb	a5,0(s2)
}
    80005294:	01813083          	ld	ra,24(sp)
    80005298:	01013403          	ld	s0,16(sp)
    8000529c:	00813483          	ld	s1,8(sp)
    800052a0:	00013903          	ld	s2,0(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <_Z12testSleepingv>:

void testSleeping() {
    800052ac:	fc010113          	addi	sp,sp,-64
    800052b0:	02113c23          	sd	ra,56(sp)
    800052b4:	02813823          	sd	s0,48(sp)
    800052b8:	02913423          	sd	s1,40(sp)
    800052bc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800052c0:	00a00793          	li	a5,10
    800052c4:	fcf43823          	sd	a5,-48(s0)
    800052c8:	01400793          	li	a5,20
    800052cc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800052d0:	00000493          	li	s1,0
    800052d4:	02c0006f          	j	80005300 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800052d8:	00349793          	slli	a5,s1,0x3
    800052dc:	fd040613          	addi	a2,s0,-48
    800052e0:	00f60633          	add	a2,a2,a5
    800052e4:	00000597          	auipc	a1,0x0
    800052e8:	f2458593          	addi	a1,a1,-220 # 80005208 <_ZL9sleepyRunPv>
    800052ec:	fc040513          	addi	a0,s0,-64
    800052f0:	00f50533          	add	a0,a0,a5
    800052f4:	ffffc097          	auipc	ra,0xffffc
    800052f8:	100080e7          	jalr	256(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800052fc:	0014849b          	addiw	s1,s1,1
    80005300:	00100793          	li	a5,1
    80005304:	fc97dae3          	bge	a5,s1,800052d8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005308:	00005797          	auipc	a5,0x5
    8000530c:	1707c783          	lbu	a5,368(a5) # 8000a478 <_ZL8finished>
    80005310:	fe078ce3          	beqz	a5,80005308 <_Z12testSleepingv+0x5c>
    80005314:	00005797          	auipc	a5,0x5
    80005318:	1657c783          	lbu	a5,357(a5) # 8000a479 <_ZL8finished+0x1>
    8000531c:	fe0786e3          	beqz	a5,80005308 <_Z12testSleepingv+0x5c>
}
    80005320:	03813083          	ld	ra,56(sp)
    80005324:	03013403          	ld	s0,48(sp)
    80005328:	02813483          	ld	s1,40(sp)
    8000532c:	04010113          	addi	sp,sp,64
    80005330:	00008067          	ret

0000000080005334 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005334:	fe010113          	addi	sp,sp,-32
    80005338:	00113c23          	sd	ra,24(sp)
    8000533c:	00813823          	sd	s0,16(sp)
    80005340:	00913423          	sd	s1,8(sp)
    80005344:	01213023          	sd	s2,0(sp)
    80005348:	02010413          	addi	s0,sp,32
    8000534c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005350:	00100793          	li	a5,1
    80005354:	02a7f863          	bgeu	a5,a0,80005384 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005358:	00a00793          	li	a5,10
    8000535c:	02f577b3          	remu	a5,a0,a5
    80005360:	02078e63          	beqz	a5,8000539c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005364:	fff48513          	addi	a0,s1,-1
    80005368:	00000097          	auipc	ra,0x0
    8000536c:	fcc080e7          	jalr	-52(ra) # 80005334 <_ZL9fibonaccim>
    80005370:	00050913          	mv	s2,a0
    80005374:	ffe48513          	addi	a0,s1,-2
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	fbc080e7          	jalr	-68(ra) # 80005334 <_ZL9fibonaccim>
    80005380:	00a90533          	add	a0,s2,a0
}
    80005384:	01813083          	ld	ra,24(sp)
    80005388:	01013403          	ld	s0,16(sp)
    8000538c:	00813483          	ld	s1,8(sp)
    80005390:	00013903          	ld	s2,0(sp)
    80005394:	02010113          	addi	sp,sp,32
    80005398:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	0fc080e7          	jalr	252(ra) # 80001498 <_Z15thread_dispatchv>
    800053a4:	fc1ff06f          	j	80005364 <_ZL9fibonaccim+0x30>

00000000800053a8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800053a8:	fe010113          	addi	sp,sp,-32
    800053ac:	00113c23          	sd	ra,24(sp)
    800053b0:	00813823          	sd	s0,16(sp)
    800053b4:	00913423          	sd	s1,8(sp)
    800053b8:	01213023          	sd	s2,0(sp)
    800053bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800053c0:	00a00493          	li	s1,10
    800053c4:	0400006f          	j	80005404 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800053c8:	00003517          	auipc	a0,0x3
    800053cc:	db850513          	addi	a0,a0,-584 # 80008180 <CONSOLE_STATUS+0x170>
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	628080e7          	jalr	1576(ra) # 800049f8 <_Z11printStringPKc>
    800053d8:	00000613          	li	a2,0
    800053dc:	00a00593          	li	a1,10
    800053e0:	00048513          	mv	a0,s1
    800053e4:	fffff097          	auipc	ra,0xfffff
    800053e8:	7c4080e7          	jalr	1988(ra) # 80004ba8 <_Z8printIntiii>
    800053ec:	00003517          	auipc	a0,0x3
    800053f0:	fc450513          	addi	a0,a0,-60 # 800083b0 <CONSOLE_STATUS+0x3a0>
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	604080e7          	jalr	1540(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800053fc:	0014849b          	addiw	s1,s1,1
    80005400:	0ff4f493          	andi	s1,s1,255
    80005404:	00c00793          	li	a5,12
    80005408:	fc97f0e3          	bgeu	a5,s1,800053c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000540c:	00003517          	auipc	a0,0x3
    80005410:	d7c50513          	addi	a0,a0,-644 # 80008188 <CONSOLE_STATUS+0x178>
    80005414:	fffff097          	auipc	ra,0xfffff
    80005418:	5e4080e7          	jalr	1508(ra) # 800049f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000541c:	00500313          	li	t1,5
    thread_dispatch();
    80005420:	ffffc097          	auipc	ra,0xffffc
    80005424:	078080e7          	jalr	120(ra) # 80001498 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005428:	01000513          	li	a0,16
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	f08080e7          	jalr	-248(ra) # 80005334 <_ZL9fibonaccim>
    80005434:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005438:	00003517          	auipc	a0,0x3
    8000543c:	d6050513          	addi	a0,a0,-672 # 80008198 <CONSOLE_STATUS+0x188>
    80005440:	fffff097          	auipc	ra,0xfffff
    80005444:	5b8080e7          	jalr	1464(ra) # 800049f8 <_Z11printStringPKc>
    80005448:	00000613          	li	a2,0
    8000544c:	00a00593          	li	a1,10
    80005450:	0009051b          	sext.w	a0,s2
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	754080e7          	jalr	1876(ra) # 80004ba8 <_Z8printIntiii>
    8000545c:	00003517          	auipc	a0,0x3
    80005460:	f5450513          	addi	a0,a0,-172 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80005464:	fffff097          	auipc	ra,0xfffff
    80005468:	594080e7          	jalr	1428(ra) # 800049f8 <_Z11printStringPKc>
    8000546c:	0400006f          	j	800054ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005470:	00003517          	auipc	a0,0x3
    80005474:	d1050513          	addi	a0,a0,-752 # 80008180 <CONSOLE_STATUS+0x170>
    80005478:	fffff097          	auipc	ra,0xfffff
    8000547c:	580080e7          	jalr	1408(ra) # 800049f8 <_Z11printStringPKc>
    80005480:	00000613          	li	a2,0
    80005484:	00a00593          	li	a1,10
    80005488:	00048513          	mv	a0,s1
    8000548c:	fffff097          	auipc	ra,0xfffff
    80005490:	71c080e7          	jalr	1820(ra) # 80004ba8 <_Z8printIntiii>
    80005494:	00003517          	auipc	a0,0x3
    80005498:	f1c50513          	addi	a0,a0,-228 # 800083b0 <CONSOLE_STATUS+0x3a0>
    8000549c:	fffff097          	auipc	ra,0xfffff
    800054a0:	55c080e7          	jalr	1372(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800054a4:	0014849b          	addiw	s1,s1,1
    800054a8:	0ff4f493          	andi	s1,s1,255
    800054ac:	00f00793          	li	a5,15
    800054b0:	fc97f0e3          	bgeu	a5,s1,80005470 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800054b4:	00003517          	auipc	a0,0x3
    800054b8:	cf450513          	addi	a0,a0,-780 # 800081a8 <CONSOLE_STATUS+0x198>
    800054bc:	fffff097          	auipc	ra,0xfffff
    800054c0:	53c080e7          	jalr	1340(ra) # 800049f8 <_Z11printStringPKc>
    finishedD = true;
    800054c4:	00100793          	li	a5,1
    800054c8:	00005717          	auipc	a4,0x5
    800054cc:	faf70923          	sb	a5,-78(a4) # 8000a47a <_ZL9finishedD>
    thread_dispatch();
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	fc8080e7          	jalr	-56(ra) # 80001498 <_Z15thread_dispatchv>
}
    800054d8:	01813083          	ld	ra,24(sp)
    800054dc:	01013403          	ld	s0,16(sp)
    800054e0:	00813483          	ld	s1,8(sp)
    800054e4:	00013903          	ld	s2,0(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret

00000000800054f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800054f0:	fe010113          	addi	sp,sp,-32
    800054f4:	00113c23          	sd	ra,24(sp)
    800054f8:	00813823          	sd	s0,16(sp)
    800054fc:	00913423          	sd	s1,8(sp)
    80005500:	01213023          	sd	s2,0(sp)
    80005504:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005508:	00000493          	li	s1,0
    8000550c:	0400006f          	j	8000554c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005510:	00003517          	auipc	a0,0x3
    80005514:	c4050513          	addi	a0,a0,-960 # 80008150 <CONSOLE_STATUS+0x140>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	4e0080e7          	jalr	1248(ra) # 800049f8 <_Z11printStringPKc>
    80005520:	00000613          	li	a2,0
    80005524:	00a00593          	li	a1,10
    80005528:	00048513          	mv	a0,s1
    8000552c:	fffff097          	auipc	ra,0xfffff
    80005530:	67c080e7          	jalr	1660(ra) # 80004ba8 <_Z8printIntiii>
    80005534:	00003517          	auipc	a0,0x3
    80005538:	e7c50513          	addi	a0,a0,-388 # 800083b0 <CONSOLE_STATUS+0x3a0>
    8000553c:	fffff097          	auipc	ra,0xfffff
    80005540:	4bc080e7          	jalr	1212(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005544:	0014849b          	addiw	s1,s1,1
    80005548:	0ff4f493          	andi	s1,s1,255
    8000554c:	00200793          	li	a5,2
    80005550:	fc97f0e3          	bgeu	a5,s1,80005510 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005554:	00003517          	auipc	a0,0x3
    80005558:	c0450513          	addi	a0,a0,-1020 # 80008158 <CONSOLE_STATUS+0x148>
    8000555c:	fffff097          	auipc	ra,0xfffff
    80005560:	49c080e7          	jalr	1180(ra) # 800049f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005564:	00700313          	li	t1,7
    thread_dispatch();
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	f30080e7          	jalr	-208(ra) # 80001498 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005570:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005574:	00003517          	auipc	a0,0x3
    80005578:	bf450513          	addi	a0,a0,-1036 # 80008168 <CONSOLE_STATUS+0x158>
    8000557c:	fffff097          	auipc	ra,0xfffff
    80005580:	47c080e7          	jalr	1148(ra) # 800049f8 <_Z11printStringPKc>
    80005584:	00000613          	li	a2,0
    80005588:	00a00593          	li	a1,10
    8000558c:	0009051b          	sext.w	a0,s2
    80005590:	fffff097          	auipc	ra,0xfffff
    80005594:	618080e7          	jalr	1560(ra) # 80004ba8 <_Z8printIntiii>
    80005598:	00003517          	auipc	a0,0x3
    8000559c:	e1850513          	addi	a0,a0,-488 # 800083b0 <CONSOLE_STATUS+0x3a0>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	458080e7          	jalr	1112(ra) # 800049f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800055a8:	00c00513          	li	a0,12
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	d88080e7          	jalr	-632(ra) # 80005334 <_ZL9fibonaccim>
    800055b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800055b8:	00003517          	auipc	a0,0x3
    800055bc:	bb850513          	addi	a0,a0,-1096 # 80008170 <CONSOLE_STATUS+0x160>
    800055c0:	fffff097          	auipc	ra,0xfffff
    800055c4:	438080e7          	jalr	1080(ra) # 800049f8 <_Z11printStringPKc>
    800055c8:	00000613          	li	a2,0
    800055cc:	00a00593          	li	a1,10
    800055d0:	0009051b          	sext.w	a0,s2
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	5d4080e7          	jalr	1492(ra) # 80004ba8 <_Z8printIntiii>
    800055dc:	00003517          	auipc	a0,0x3
    800055e0:	dd450513          	addi	a0,a0,-556 # 800083b0 <CONSOLE_STATUS+0x3a0>
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	414080e7          	jalr	1044(ra) # 800049f8 <_Z11printStringPKc>
    800055ec:	0400006f          	j	8000562c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800055f0:	00003517          	auipc	a0,0x3
    800055f4:	b6050513          	addi	a0,a0,-1184 # 80008150 <CONSOLE_STATUS+0x140>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	400080e7          	jalr	1024(ra) # 800049f8 <_Z11printStringPKc>
    80005600:	00000613          	li	a2,0
    80005604:	00a00593          	li	a1,10
    80005608:	00048513          	mv	a0,s1
    8000560c:	fffff097          	auipc	ra,0xfffff
    80005610:	59c080e7          	jalr	1436(ra) # 80004ba8 <_Z8printIntiii>
    80005614:	00003517          	auipc	a0,0x3
    80005618:	d9c50513          	addi	a0,a0,-612 # 800083b0 <CONSOLE_STATUS+0x3a0>
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	3dc080e7          	jalr	988(ra) # 800049f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005624:	0014849b          	addiw	s1,s1,1
    80005628:	0ff4f493          	andi	s1,s1,255
    8000562c:	00500793          	li	a5,5
    80005630:	fc97f0e3          	bgeu	a5,s1,800055f0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005634:	00003517          	auipc	a0,0x3
    80005638:	af450513          	addi	a0,a0,-1292 # 80008128 <CONSOLE_STATUS+0x118>
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	3bc080e7          	jalr	956(ra) # 800049f8 <_Z11printStringPKc>
    finishedC = true;
    80005644:	00100793          	li	a5,1
    80005648:	00005717          	auipc	a4,0x5
    8000564c:	e2f709a3          	sb	a5,-461(a4) # 8000a47b <_ZL9finishedC>
    thread_dispatch();
    80005650:	ffffc097          	auipc	ra,0xffffc
    80005654:	e48080e7          	jalr	-440(ra) # 80001498 <_Z15thread_dispatchv>
}
    80005658:	01813083          	ld	ra,24(sp)
    8000565c:	01013403          	ld	s0,16(sp)
    80005660:	00813483          	ld	s1,8(sp)
    80005664:	00013903          	ld	s2,0(sp)
    80005668:	02010113          	addi	sp,sp,32
    8000566c:	00008067          	ret

0000000080005670 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005670:	fe010113          	addi	sp,sp,-32
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00813823          	sd	s0,16(sp)
    8000567c:	00913423          	sd	s1,8(sp)
    80005680:	01213023          	sd	s2,0(sp)
    80005684:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005688:	00000913          	li	s2,0
    8000568c:	0400006f          	j	800056cc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005690:	ffffc097          	auipc	ra,0xffffc
    80005694:	e08080e7          	jalr	-504(ra) # 80001498 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005698:	00148493          	addi	s1,s1,1
    8000569c:	000027b7          	lui	a5,0x2
    800056a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056a4:	0097ee63          	bltu	a5,s1,800056c0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056a8:	00000713          	li	a4,0
    800056ac:	000077b7          	lui	a5,0x7
    800056b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056b4:	fce7eee3          	bltu	a5,a4,80005690 <_ZL11workerBodyBPv+0x20>
    800056b8:	00170713          	addi	a4,a4,1
    800056bc:	ff1ff06f          	j	800056ac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800056c0:	00a00793          	li	a5,10
    800056c4:	04f90663          	beq	s2,a5,80005710 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800056c8:	00190913          	addi	s2,s2,1
    800056cc:	00f00793          	li	a5,15
    800056d0:	0527e463          	bltu	a5,s2,80005718 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800056d4:	00003517          	auipc	a0,0x3
    800056d8:	a6450513          	addi	a0,a0,-1436 # 80008138 <CONSOLE_STATUS+0x128>
    800056dc:	fffff097          	auipc	ra,0xfffff
    800056e0:	31c080e7          	jalr	796(ra) # 800049f8 <_Z11printStringPKc>
    800056e4:	00000613          	li	a2,0
    800056e8:	00a00593          	li	a1,10
    800056ec:	0009051b          	sext.w	a0,s2
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	4b8080e7          	jalr	1208(ra) # 80004ba8 <_Z8printIntiii>
    800056f8:	00003517          	auipc	a0,0x3
    800056fc:	cb850513          	addi	a0,a0,-840 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80005700:	fffff097          	auipc	ra,0xfffff
    80005704:	2f8080e7          	jalr	760(ra) # 800049f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005708:	00000493          	li	s1,0
    8000570c:	f91ff06f          	j	8000569c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005710:	14102ff3          	csrr	t6,sepc
    80005714:	fb5ff06f          	j	800056c8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005718:	00003517          	auipc	a0,0x3
    8000571c:	a2850513          	addi	a0,a0,-1496 # 80008140 <CONSOLE_STATUS+0x130>
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	2d8080e7          	jalr	728(ra) # 800049f8 <_Z11printStringPKc>
    finishedB = true;
    80005728:	00100793          	li	a5,1
    8000572c:	00005717          	auipc	a4,0x5
    80005730:	d4f70823          	sb	a5,-688(a4) # 8000a47c <_ZL9finishedB>
    thread_dispatch();
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	d64080e7          	jalr	-668(ra) # 80001498 <_Z15thread_dispatchv>
}
    8000573c:	01813083          	ld	ra,24(sp)
    80005740:	01013403          	ld	s0,16(sp)
    80005744:	00813483          	ld	s1,8(sp)
    80005748:	00013903          	ld	s2,0(sp)
    8000574c:	02010113          	addi	sp,sp,32
    80005750:	00008067          	ret

0000000080005754 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005754:	fe010113          	addi	sp,sp,-32
    80005758:	00113c23          	sd	ra,24(sp)
    8000575c:	00813823          	sd	s0,16(sp)
    80005760:	00913423          	sd	s1,8(sp)
    80005764:	01213023          	sd	s2,0(sp)
    80005768:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000576c:	00000913          	li	s2,0
    80005770:	0380006f          	j	800057a8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	d24080e7          	jalr	-732(ra) # 80001498 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000577c:	00148493          	addi	s1,s1,1
    80005780:	000027b7          	lui	a5,0x2
    80005784:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005788:	0097ee63          	bltu	a5,s1,800057a4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000578c:	00000713          	li	a4,0
    80005790:	000077b7          	lui	a5,0x7
    80005794:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005798:	fce7eee3          	bltu	a5,a4,80005774 <_ZL11workerBodyAPv+0x20>
    8000579c:	00170713          	addi	a4,a4,1
    800057a0:	ff1ff06f          	j	80005790 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800057a4:	00190913          	addi	s2,s2,1
    800057a8:	00900793          	li	a5,9
    800057ac:	0527e063          	bltu	a5,s2,800057ec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800057b0:	00003517          	auipc	a0,0x3
    800057b4:	97050513          	addi	a0,a0,-1680 # 80008120 <CONSOLE_STATUS+0x110>
    800057b8:	fffff097          	auipc	ra,0xfffff
    800057bc:	240080e7          	jalr	576(ra) # 800049f8 <_Z11printStringPKc>
    800057c0:	00000613          	li	a2,0
    800057c4:	00a00593          	li	a1,10
    800057c8:	0009051b          	sext.w	a0,s2
    800057cc:	fffff097          	auipc	ra,0xfffff
    800057d0:	3dc080e7          	jalr	988(ra) # 80004ba8 <_Z8printIntiii>
    800057d4:	00003517          	auipc	a0,0x3
    800057d8:	bdc50513          	addi	a0,a0,-1060 # 800083b0 <CONSOLE_STATUS+0x3a0>
    800057dc:	fffff097          	auipc	ra,0xfffff
    800057e0:	21c080e7          	jalr	540(ra) # 800049f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057e4:	00000493          	li	s1,0
    800057e8:	f99ff06f          	j	80005780 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800057ec:	00003517          	auipc	a0,0x3
    800057f0:	93c50513          	addi	a0,a0,-1732 # 80008128 <CONSOLE_STATUS+0x118>
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	204080e7          	jalr	516(ra) # 800049f8 <_Z11printStringPKc>
    finishedA = true;
    800057fc:	00100793          	li	a5,1
    80005800:	00005717          	auipc	a4,0x5
    80005804:	c6f70ea3          	sb	a5,-899(a4) # 8000a47d <_ZL9finishedA>
}
    80005808:	01813083          	ld	ra,24(sp)
    8000580c:	01013403          	ld	s0,16(sp)
    80005810:	00813483          	ld	s1,8(sp)
    80005814:	00013903          	ld	s2,0(sp)
    80005818:	02010113          	addi	sp,sp,32
    8000581c:	00008067          	ret

0000000080005820 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005820:	fd010113          	addi	sp,sp,-48
    80005824:	02113423          	sd	ra,40(sp)
    80005828:	02813023          	sd	s0,32(sp)
    8000582c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005830:	00000613          	li	a2,0
    80005834:	00000597          	auipc	a1,0x0
    80005838:	f2058593          	addi	a1,a1,-224 # 80005754 <_ZL11workerBodyAPv>
    8000583c:	fd040513          	addi	a0,s0,-48
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	bb4080e7          	jalr	-1100(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005848:	00003517          	auipc	a0,0x3
    8000584c:	97050513          	addi	a0,a0,-1680 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005850:	fffff097          	auipc	ra,0xfffff
    80005854:	1a8080e7          	jalr	424(ra) # 800049f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005858:	00000613          	li	a2,0
    8000585c:	00000597          	auipc	a1,0x0
    80005860:	e1458593          	addi	a1,a1,-492 # 80005670 <_ZL11workerBodyBPv>
    80005864:	fd840513          	addi	a0,s0,-40
    80005868:	ffffc097          	auipc	ra,0xffffc
    8000586c:	b8c080e7          	jalr	-1140(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005870:	00003517          	auipc	a0,0x3
    80005874:	96050513          	addi	a0,a0,-1696 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80005878:	fffff097          	auipc	ra,0xfffff
    8000587c:	180080e7          	jalr	384(ra) # 800049f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005880:	00000613          	li	a2,0
    80005884:	00000597          	auipc	a1,0x0
    80005888:	c6c58593          	addi	a1,a1,-916 # 800054f0 <_ZL11workerBodyCPv>
    8000588c:	fe040513          	addi	a0,s0,-32
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	b64080e7          	jalr	-1180(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005898:	00003517          	auipc	a0,0x3
    8000589c:	95050513          	addi	a0,a0,-1712 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800058a0:	fffff097          	auipc	ra,0xfffff
    800058a4:	158080e7          	jalr	344(ra) # 800049f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800058a8:	00000613          	li	a2,0
    800058ac:	00000597          	auipc	a1,0x0
    800058b0:	afc58593          	addi	a1,a1,-1284 # 800053a8 <_ZL11workerBodyDPv>
    800058b4:	fe840513          	addi	a0,s0,-24
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	b3c080e7          	jalr	-1220(ra) # 800013f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800058c0:	00003517          	auipc	a0,0x3
    800058c4:	94050513          	addi	a0,a0,-1728 # 80008200 <CONSOLE_STATUS+0x1f0>
    800058c8:	fffff097          	auipc	ra,0xfffff
    800058cc:	130080e7          	jalr	304(ra) # 800049f8 <_Z11printStringPKc>
    800058d0:	00c0006f          	j	800058dc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	bc4080e7          	jalr	-1084(ra) # 80001498 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800058dc:	00005797          	auipc	a5,0x5
    800058e0:	ba17c783          	lbu	a5,-1119(a5) # 8000a47d <_ZL9finishedA>
    800058e4:	fe0788e3          	beqz	a5,800058d4 <_Z16System_Mode_testv+0xb4>
    800058e8:	00005797          	auipc	a5,0x5
    800058ec:	b947c783          	lbu	a5,-1132(a5) # 8000a47c <_ZL9finishedB>
    800058f0:	fe0782e3          	beqz	a5,800058d4 <_Z16System_Mode_testv+0xb4>
    800058f4:	00005797          	auipc	a5,0x5
    800058f8:	b877c783          	lbu	a5,-1145(a5) # 8000a47b <_ZL9finishedC>
    800058fc:	fc078ce3          	beqz	a5,800058d4 <_Z16System_Mode_testv+0xb4>
    80005900:	00005797          	auipc	a5,0x5
    80005904:	b7a7c783          	lbu	a5,-1158(a5) # 8000a47a <_ZL9finishedD>
    80005908:	fc0786e3          	beqz	a5,800058d4 <_Z16System_Mode_testv+0xb4>
    }

}
    8000590c:	02813083          	ld	ra,40(sp)
    80005910:	02013403          	ld	s0,32(sp)
    80005914:	03010113          	addi	sp,sp,48
    80005918:	00008067          	ret

000000008000591c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000591c:	fe010113          	addi	sp,sp,-32
    80005920:	00113c23          	sd	ra,24(sp)
    80005924:	00813823          	sd	s0,16(sp)
    80005928:	00913423          	sd	s1,8(sp)
    8000592c:	01213023          	sd	s2,0(sp)
    80005930:	02010413          	addi	s0,sp,32
    80005934:	00050493          	mv	s1,a0
    80005938:	00058913          	mv	s2,a1
    8000593c:	0015879b          	addiw	a5,a1,1
    80005940:	0007851b          	sext.w	a0,a5
    80005944:	00f4a023          	sw	a5,0(s1)
    80005948:	0004a823          	sw	zero,16(s1)
    8000594c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005950:	00251513          	slli	a0,a0,0x2
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	a18080e7          	jalr	-1512(ra) # 8000136c <_Z9mem_allocm>
    8000595c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005960:	00000593          	li	a1,0
    80005964:	02048513          	addi	a0,s1,32
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	b74080e7          	jalr	-1164(ra) # 800014dc <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable, _cap);
    80005970:	00090593          	mv	a1,s2
    80005974:	01848513          	addi	a0,s1,24
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	b64080e7          	jalr	-1180(ra) # 800014dc <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexHead, 1);
    80005980:	00100593          	li	a1,1
    80005984:	02848513          	addi	a0,s1,40
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	b54080e7          	jalr	-1196(ra) # 800014dc <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexTail, 1);
    80005990:	00100593          	li	a1,1
    80005994:	03048513          	addi	a0,s1,48
    80005998:	ffffc097          	auipc	ra,0xffffc
    8000599c:	b44080e7          	jalr	-1212(ra) # 800014dc <_Z8sem_openPP11MySemaphorej>
}
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	00813483          	ld	s1,8(sp)
    800059ac:	00013903          	ld	s2,0(sp)
    800059b0:	02010113          	addi	sp,sp,32
    800059b4:	00008067          	ret

00000000800059b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800059b8:	fe010113          	addi	sp,sp,-32
    800059bc:	00113c23          	sd	ra,24(sp)
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00913423          	sd	s1,8(sp)
    800059c8:	01213023          	sd	s2,0(sp)
    800059cc:	02010413          	addi	s0,sp,32
    800059d0:	00050493          	mv	s1,a0
    800059d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800059d8:	01853503          	ld	a0,24(a0)
    800059dc:	ffffc097          	auipc	ra,0xffffc
    800059e0:	b5c080e7          	jalr	-1188(ra) # 80001538 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexTail);
    800059e4:	0304b503          	ld	a0,48(s1)
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	b50080e7          	jalr	-1200(ra) # 80001538 <_Z8sem_waitP11MySemaphore>
    buffer[tail] = val;
    800059f0:	0084b783          	ld	a5,8(s1)
    800059f4:	0144a703          	lw	a4,20(s1)
    800059f8:	00271713          	slli	a4,a4,0x2
    800059fc:	00e787b3          	add	a5,a5,a4
    80005a00:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a04:	0144a783          	lw	a5,20(s1)
    80005a08:	0017879b          	addiw	a5,a5,1
    80005a0c:	0004a703          	lw	a4,0(s1)
    80005a10:	02e7e7bb          	remw	a5,a5,a4
    80005a14:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005a18:	0304b503          	ld	a0,48(s1)
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	b48080e7          	jalr	-1208(ra) # 80001564 <_Z10sem_signalP11MySemaphore>

    sem_signal(itemAvailable);
    80005a24:	0204b503          	ld	a0,32(s1)
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	b3c080e7          	jalr	-1220(ra) # 80001564 <_Z10sem_signalP11MySemaphore>

}
    80005a30:	01813083          	ld	ra,24(sp)
    80005a34:	01013403          	ld	s0,16(sp)
    80005a38:	00813483          	ld	s1,8(sp)
    80005a3c:	00013903          	ld	s2,0(sp)
    80005a40:	02010113          	addi	sp,sp,32
    80005a44:	00008067          	ret

0000000080005a48 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005a48:	fe010113          	addi	sp,sp,-32
    80005a4c:	00113c23          	sd	ra,24(sp)
    80005a50:	00813823          	sd	s0,16(sp)
    80005a54:	00913423          	sd	s1,8(sp)
    80005a58:	01213023          	sd	s2,0(sp)
    80005a5c:	02010413          	addi	s0,sp,32
    80005a60:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005a64:	02053503          	ld	a0,32(a0)
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	ad0080e7          	jalr	-1328(ra) # 80001538 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexHead);
    80005a70:	0284b503          	ld	a0,40(s1)
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	ac4080e7          	jalr	-1340(ra) # 80001538 <_Z8sem_waitP11MySemaphore>

    int ret = buffer[head];
    80005a7c:	0084b703          	ld	a4,8(s1)
    80005a80:	0104a783          	lw	a5,16(s1)
    80005a84:	00279693          	slli	a3,a5,0x2
    80005a88:	00d70733          	add	a4,a4,a3
    80005a8c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005a90:	0017879b          	addiw	a5,a5,1
    80005a94:	0004a703          	lw	a4,0(s1)
    80005a98:	02e7e7bb          	remw	a5,a5,a4
    80005a9c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005aa0:	0284b503          	ld	a0,40(s1)
    80005aa4:	ffffc097          	auipc	ra,0xffffc
    80005aa8:	ac0080e7          	jalr	-1344(ra) # 80001564 <_Z10sem_signalP11MySemaphore>

    sem_signal(spaceAvailable);
    80005aac:	0184b503          	ld	a0,24(s1)
    80005ab0:	ffffc097          	auipc	ra,0xffffc
    80005ab4:	ab4080e7          	jalr	-1356(ra) # 80001564 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    80005ab8:	00090513          	mv	a0,s2
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	00013903          	ld	s2,0(sp)
    80005acc:	02010113          	addi	sp,sp,32
    80005ad0:	00008067          	ret

0000000080005ad4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005ad4:	fe010113          	addi	sp,sp,-32
    80005ad8:	00113c23          	sd	ra,24(sp)
    80005adc:	00813823          	sd	s0,16(sp)
    80005ae0:	00913423          	sd	s1,8(sp)
    80005ae4:	01213023          	sd	s2,0(sp)
    80005ae8:	02010413          	addi	s0,sp,32
    80005aec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005af0:	02853503          	ld	a0,40(a0)
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	a44080e7          	jalr	-1468(ra) # 80001538 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutexTail);
    80005afc:	0304b503          	ld	a0,48(s1)
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	a38080e7          	jalr	-1480(ra) # 80001538 <_Z8sem_waitP11MySemaphore>

    if (tail >= head) {
    80005b08:	0144a783          	lw	a5,20(s1)
    80005b0c:	0104a903          	lw	s2,16(s1)
    80005b10:	0327ce63          	blt	a5,s2,80005b4c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005b14:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005b18:	0304b503          	ld	a0,48(s1)
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	a48080e7          	jalr	-1464(ra) # 80001564 <_Z10sem_signalP11MySemaphore>
    sem_signal(mutexHead);
    80005b24:	0284b503          	ld	a0,40(s1)
    80005b28:	ffffc097          	auipc	ra,0xffffc
    80005b2c:	a3c080e7          	jalr	-1476(ra) # 80001564 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    80005b30:	00090513          	mv	a0,s2
    80005b34:	01813083          	ld	ra,24(sp)
    80005b38:	01013403          	ld	s0,16(sp)
    80005b3c:	00813483          	ld	s1,8(sp)
    80005b40:	00013903          	ld	s2,0(sp)
    80005b44:	02010113          	addi	sp,sp,32
    80005b48:	00008067          	ret
        ret = cap - head + tail;
    80005b4c:	0004a703          	lw	a4,0(s1)
    80005b50:	4127093b          	subw	s2,a4,s2
    80005b54:	00f9093b          	addw	s2,s2,a5
    80005b58:	fc1ff06f          	j	80005b18 <_ZN6Buffer6getCntEv+0x44>

0000000080005b5c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	00050493          	mv	s1,a0
    putc('\n');
    80005b74:	00a00513          	li	a0,10
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	a7c080e7          	jalr	-1412(ra) # 800015f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005b80:	00002517          	auipc	a0,0x2
    80005b84:	6a850513          	addi	a0,a0,1704 # 80008228 <CONSOLE_STATUS+0x218>
    80005b88:	fffff097          	auipc	ra,0xfffff
    80005b8c:	e70080e7          	jalr	-400(ra) # 800049f8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005b90:	00048513          	mv	a0,s1
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	f40080e7          	jalr	-192(ra) # 80005ad4 <_ZN6Buffer6getCntEv>
    80005b9c:	02a05c63          	blez	a0,80005bd4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005ba0:	0084b783          	ld	a5,8(s1)
    80005ba4:	0104a703          	lw	a4,16(s1)
    80005ba8:	00271713          	slli	a4,a4,0x2
    80005bac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005bb0:	0007c503          	lbu	a0,0(a5)
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	a40080e7          	jalr	-1472(ra) # 800015f4 <_Z4putcc>
        head = (head + 1) % cap;
    80005bbc:	0104a783          	lw	a5,16(s1)
    80005bc0:	0017879b          	addiw	a5,a5,1
    80005bc4:	0004a703          	lw	a4,0(s1)
    80005bc8:	02e7e7bb          	remw	a5,a5,a4
    80005bcc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005bd0:	fc1ff06f          	j	80005b90 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005bd4:	02100513          	li	a0,33
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	a1c080e7          	jalr	-1508(ra) # 800015f4 <_Z4putcc>
    putc('\n');
    80005be0:	00a00513          	li	a0,10
    80005be4:	ffffc097          	auipc	ra,0xffffc
    80005be8:	a10080e7          	jalr	-1520(ra) # 800015f4 <_Z4putcc>
    mem_free(buffer);
    80005bec:	0084b503          	ld	a0,8(s1)
    80005bf0:	ffffb097          	auipc	ra,0xffffb
    80005bf4:	7b8080e7          	jalr	1976(ra) # 800013a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005bf8:	0204b503          	ld	a0,32(s1)
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	910080e7          	jalr	-1776(ra) # 8000150c <_Z9sem_closeP11MySemaphore>
    sem_close(spaceAvailable);
    80005c04:	0184b503          	ld	a0,24(s1)
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	904080e7          	jalr	-1788(ra) # 8000150c <_Z9sem_closeP11MySemaphore>
    sem_close(mutexTail);
    80005c10:	0304b503          	ld	a0,48(s1)
    80005c14:	ffffc097          	auipc	ra,0xffffc
    80005c18:	8f8080e7          	jalr	-1800(ra) # 8000150c <_Z9sem_closeP11MySemaphore>
    sem_close(mutexHead);
    80005c1c:	0284b503          	ld	a0,40(s1)
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	8ec080e7          	jalr	-1812(ra) # 8000150c <_Z9sem_closeP11MySemaphore>
}
    80005c28:	01813083          	ld	ra,24(sp)
    80005c2c:	01013403          	ld	s0,16(sp)
    80005c30:	00813483          	ld	s1,8(sp)
    80005c34:	02010113          	addi	sp,sp,32
    80005c38:	00008067          	ret

0000000080005c3c <start>:
    80005c3c:	ff010113          	addi	sp,sp,-16
    80005c40:	00813423          	sd	s0,8(sp)
    80005c44:	01010413          	addi	s0,sp,16
    80005c48:	300027f3          	csrr	a5,mstatus
    80005c4c:	ffffe737          	lui	a4,0xffffe
    80005c50:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff311f>
    80005c54:	00e7f7b3          	and	a5,a5,a4
    80005c58:	00001737          	lui	a4,0x1
    80005c5c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005c60:	00e7e7b3          	or	a5,a5,a4
    80005c64:	30079073          	csrw	mstatus,a5
    80005c68:	00000797          	auipc	a5,0x0
    80005c6c:	16078793          	addi	a5,a5,352 # 80005dc8 <system_main>
    80005c70:	34179073          	csrw	mepc,a5
    80005c74:	00000793          	li	a5,0
    80005c78:	18079073          	csrw	satp,a5
    80005c7c:	000107b7          	lui	a5,0x10
    80005c80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005c84:	30279073          	csrw	medeleg,a5
    80005c88:	30379073          	csrw	mideleg,a5
    80005c8c:	104027f3          	csrr	a5,sie
    80005c90:	2227e793          	ori	a5,a5,546
    80005c94:	10479073          	csrw	sie,a5
    80005c98:	fff00793          	li	a5,-1
    80005c9c:	00a7d793          	srli	a5,a5,0xa
    80005ca0:	3b079073          	csrw	pmpaddr0,a5
    80005ca4:	00f00793          	li	a5,15
    80005ca8:	3a079073          	csrw	pmpcfg0,a5
    80005cac:	f14027f3          	csrr	a5,mhartid
    80005cb0:	0200c737          	lui	a4,0x200c
    80005cb4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005cb8:	0007869b          	sext.w	a3,a5
    80005cbc:	00269713          	slli	a4,a3,0x2
    80005cc0:	000f4637          	lui	a2,0xf4
    80005cc4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005cc8:	00d70733          	add	a4,a4,a3
    80005ccc:	0037979b          	slliw	a5,a5,0x3
    80005cd0:	020046b7          	lui	a3,0x2004
    80005cd4:	00d787b3          	add	a5,a5,a3
    80005cd8:	00c585b3          	add	a1,a1,a2
    80005cdc:	00371693          	slli	a3,a4,0x3
    80005ce0:	00004717          	auipc	a4,0x4
    80005ce4:	7a070713          	addi	a4,a4,1952 # 8000a480 <timer_scratch>
    80005ce8:	00b7b023          	sd	a1,0(a5)
    80005cec:	00d70733          	add	a4,a4,a3
    80005cf0:	00f73c23          	sd	a5,24(a4)
    80005cf4:	02c73023          	sd	a2,32(a4)
    80005cf8:	34071073          	csrw	mscratch,a4
    80005cfc:	00000797          	auipc	a5,0x0
    80005d00:	6e478793          	addi	a5,a5,1764 # 800063e0 <timervec>
    80005d04:	30579073          	csrw	mtvec,a5
    80005d08:	300027f3          	csrr	a5,mstatus
    80005d0c:	0087e793          	ori	a5,a5,8
    80005d10:	30079073          	csrw	mstatus,a5
    80005d14:	304027f3          	csrr	a5,mie
    80005d18:	0807e793          	ori	a5,a5,128
    80005d1c:	30479073          	csrw	mie,a5
    80005d20:	f14027f3          	csrr	a5,mhartid
    80005d24:	0007879b          	sext.w	a5,a5
    80005d28:	00078213          	mv	tp,a5
    80005d2c:	30200073          	mret
    80005d30:	00813403          	ld	s0,8(sp)
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret

0000000080005d3c <timerinit>:
    80005d3c:	ff010113          	addi	sp,sp,-16
    80005d40:	00813423          	sd	s0,8(sp)
    80005d44:	01010413          	addi	s0,sp,16
    80005d48:	f14027f3          	csrr	a5,mhartid
    80005d4c:	0200c737          	lui	a4,0x200c
    80005d50:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d54:	0007869b          	sext.w	a3,a5
    80005d58:	00269713          	slli	a4,a3,0x2
    80005d5c:	000f4637          	lui	a2,0xf4
    80005d60:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005d64:	00d70733          	add	a4,a4,a3
    80005d68:	0037979b          	slliw	a5,a5,0x3
    80005d6c:	020046b7          	lui	a3,0x2004
    80005d70:	00d787b3          	add	a5,a5,a3
    80005d74:	00c585b3          	add	a1,a1,a2
    80005d78:	00371693          	slli	a3,a4,0x3
    80005d7c:	00004717          	auipc	a4,0x4
    80005d80:	70470713          	addi	a4,a4,1796 # 8000a480 <timer_scratch>
    80005d84:	00b7b023          	sd	a1,0(a5)
    80005d88:	00d70733          	add	a4,a4,a3
    80005d8c:	00f73c23          	sd	a5,24(a4)
    80005d90:	02c73023          	sd	a2,32(a4)
    80005d94:	34071073          	csrw	mscratch,a4
    80005d98:	00000797          	auipc	a5,0x0
    80005d9c:	64878793          	addi	a5,a5,1608 # 800063e0 <timervec>
    80005da0:	30579073          	csrw	mtvec,a5
    80005da4:	300027f3          	csrr	a5,mstatus
    80005da8:	0087e793          	ori	a5,a5,8
    80005dac:	30079073          	csrw	mstatus,a5
    80005db0:	304027f3          	csrr	a5,mie
    80005db4:	0807e793          	ori	a5,a5,128
    80005db8:	30479073          	csrw	mie,a5
    80005dbc:	00813403          	ld	s0,8(sp)
    80005dc0:	01010113          	addi	sp,sp,16
    80005dc4:	00008067          	ret

0000000080005dc8 <system_main>:
    80005dc8:	fe010113          	addi	sp,sp,-32
    80005dcc:	00813823          	sd	s0,16(sp)
    80005dd0:	00913423          	sd	s1,8(sp)
    80005dd4:	00113c23          	sd	ra,24(sp)
    80005dd8:	02010413          	addi	s0,sp,32
    80005ddc:	00000097          	auipc	ra,0x0
    80005de0:	0c4080e7          	jalr	196(ra) # 80005ea0 <cpuid>
    80005de4:	00004497          	auipc	s1,0x4
    80005de8:	5fc48493          	addi	s1,s1,1532 # 8000a3e0 <started>
    80005dec:	02050263          	beqz	a0,80005e10 <system_main+0x48>
    80005df0:	0004a783          	lw	a5,0(s1)
    80005df4:	0007879b          	sext.w	a5,a5
    80005df8:	fe078ce3          	beqz	a5,80005df0 <system_main+0x28>
    80005dfc:	0ff0000f          	fence
    80005e00:	00002517          	auipc	a0,0x2
    80005e04:	6b850513          	addi	a0,a0,1720 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80005e08:	00001097          	auipc	ra,0x1
    80005e0c:	a74080e7          	jalr	-1420(ra) # 8000687c <panic>
    80005e10:	00001097          	auipc	ra,0x1
    80005e14:	9c8080e7          	jalr	-1592(ra) # 800067d8 <consoleinit>
    80005e18:	00001097          	auipc	ra,0x1
    80005e1c:	154080e7          	jalr	340(ra) # 80006f6c <printfinit>
    80005e20:	00002517          	auipc	a0,0x2
    80005e24:	59050513          	addi	a0,a0,1424 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80005e28:	00001097          	auipc	ra,0x1
    80005e2c:	ab0080e7          	jalr	-1360(ra) # 800068d8 <__printf>
    80005e30:	00002517          	auipc	a0,0x2
    80005e34:	65850513          	addi	a0,a0,1624 # 80008488 <CONSOLE_STATUS+0x478>
    80005e38:	00001097          	auipc	ra,0x1
    80005e3c:	aa0080e7          	jalr	-1376(ra) # 800068d8 <__printf>
    80005e40:	00002517          	auipc	a0,0x2
    80005e44:	57050513          	addi	a0,a0,1392 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80005e48:	00001097          	auipc	ra,0x1
    80005e4c:	a90080e7          	jalr	-1392(ra) # 800068d8 <__printf>
    80005e50:	00001097          	auipc	ra,0x1
    80005e54:	4a8080e7          	jalr	1192(ra) # 800072f8 <kinit>
    80005e58:	00000097          	auipc	ra,0x0
    80005e5c:	148080e7          	jalr	328(ra) # 80005fa0 <trapinit>
    80005e60:	00000097          	auipc	ra,0x0
    80005e64:	16c080e7          	jalr	364(ra) # 80005fcc <trapinithart>
    80005e68:	00000097          	auipc	ra,0x0
    80005e6c:	5b8080e7          	jalr	1464(ra) # 80006420 <plicinit>
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	5d8080e7          	jalr	1496(ra) # 80006448 <plicinithart>
    80005e78:	00000097          	auipc	ra,0x0
    80005e7c:	078080e7          	jalr	120(ra) # 80005ef0 <userinit>
    80005e80:	0ff0000f          	fence
    80005e84:	00100793          	li	a5,1
    80005e88:	00002517          	auipc	a0,0x2
    80005e8c:	61850513          	addi	a0,a0,1560 # 800084a0 <CONSOLE_STATUS+0x490>
    80005e90:	00f4a023          	sw	a5,0(s1)
    80005e94:	00001097          	auipc	ra,0x1
    80005e98:	a44080e7          	jalr	-1468(ra) # 800068d8 <__printf>
    80005e9c:	0000006f          	j	80005e9c <system_main+0xd4>

0000000080005ea0 <cpuid>:
    80005ea0:	ff010113          	addi	sp,sp,-16
    80005ea4:	00813423          	sd	s0,8(sp)
    80005ea8:	01010413          	addi	s0,sp,16
    80005eac:	00020513          	mv	a0,tp
    80005eb0:	00813403          	ld	s0,8(sp)
    80005eb4:	0005051b          	sext.w	a0,a0
    80005eb8:	01010113          	addi	sp,sp,16
    80005ebc:	00008067          	ret

0000000080005ec0 <mycpu>:
    80005ec0:	ff010113          	addi	sp,sp,-16
    80005ec4:	00813423          	sd	s0,8(sp)
    80005ec8:	01010413          	addi	s0,sp,16
    80005ecc:	00020793          	mv	a5,tp
    80005ed0:	00813403          	ld	s0,8(sp)
    80005ed4:	0007879b          	sext.w	a5,a5
    80005ed8:	00779793          	slli	a5,a5,0x7
    80005edc:	00005517          	auipc	a0,0x5
    80005ee0:	5d450513          	addi	a0,a0,1492 # 8000b4b0 <cpus>
    80005ee4:	00f50533          	add	a0,a0,a5
    80005ee8:	01010113          	addi	sp,sp,16
    80005eec:	00008067          	ret

0000000080005ef0 <userinit>:
    80005ef0:	ff010113          	addi	sp,sp,-16
    80005ef4:	00813423          	sd	s0,8(sp)
    80005ef8:	01010413          	addi	s0,sp,16
    80005efc:	00813403          	ld	s0,8(sp)
    80005f00:	01010113          	addi	sp,sp,16
    80005f04:	ffffc317          	auipc	t1,0xffffc
    80005f08:	d8830067          	jr	-632(t1) # 80001c8c <main>

0000000080005f0c <either_copyout>:
    80005f0c:	ff010113          	addi	sp,sp,-16
    80005f10:	00813023          	sd	s0,0(sp)
    80005f14:	00113423          	sd	ra,8(sp)
    80005f18:	01010413          	addi	s0,sp,16
    80005f1c:	02051663          	bnez	a0,80005f48 <either_copyout+0x3c>
    80005f20:	00058513          	mv	a0,a1
    80005f24:	00060593          	mv	a1,a2
    80005f28:	0006861b          	sext.w	a2,a3
    80005f2c:	00002097          	auipc	ra,0x2
    80005f30:	c58080e7          	jalr	-936(ra) # 80007b84 <__memmove>
    80005f34:	00813083          	ld	ra,8(sp)
    80005f38:	00013403          	ld	s0,0(sp)
    80005f3c:	00000513          	li	a0,0
    80005f40:	01010113          	addi	sp,sp,16
    80005f44:	00008067          	ret
    80005f48:	00002517          	auipc	a0,0x2
    80005f4c:	59850513          	addi	a0,a0,1432 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005f50:	00001097          	auipc	ra,0x1
    80005f54:	92c080e7          	jalr	-1748(ra) # 8000687c <panic>

0000000080005f58 <either_copyin>:
    80005f58:	ff010113          	addi	sp,sp,-16
    80005f5c:	00813023          	sd	s0,0(sp)
    80005f60:	00113423          	sd	ra,8(sp)
    80005f64:	01010413          	addi	s0,sp,16
    80005f68:	02059463          	bnez	a1,80005f90 <either_copyin+0x38>
    80005f6c:	00060593          	mv	a1,a2
    80005f70:	0006861b          	sext.w	a2,a3
    80005f74:	00002097          	auipc	ra,0x2
    80005f78:	c10080e7          	jalr	-1008(ra) # 80007b84 <__memmove>
    80005f7c:	00813083          	ld	ra,8(sp)
    80005f80:	00013403          	ld	s0,0(sp)
    80005f84:	00000513          	li	a0,0
    80005f88:	01010113          	addi	sp,sp,16
    80005f8c:	00008067          	ret
    80005f90:	00002517          	auipc	a0,0x2
    80005f94:	57850513          	addi	a0,a0,1400 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005f98:	00001097          	auipc	ra,0x1
    80005f9c:	8e4080e7          	jalr	-1820(ra) # 8000687c <panic>

0000000080005fa0 <trapinit>:
    80005fa0:	ff010113          	addi	sp,sp,-16
    80005fa4:	00813423          	sd	s0,8(sp)
    80005fa8:	01010413          	addi	s0,sp,16
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	00002597          	auipc	a1,0x2
    80005fb4:	58058593          	addi	a1,a1,1408 # 80008530 <CONSOLE_STATUS+0x520>
    80005fb8:	00005517          	auipc	a0,0x5
    80005fbc:	57850513          	addi	a0,a0,1400 # 8000b530 <tickslock>
    80005fc0:	01010113          	addi	sp,sp,16
    80005fc4:	00001317          	auipc	t1,0x1
    80005fc8:	5c430067          	jr	1476(t1) # 80007588 <initlock>

0000000080005fcc <trapinithart>:
    80005fcc:	ff010113          	addi	sp,sp,-16
    80005fd0:	00813423          	sd	s0,8(sp)
    80005fd4:	01010413          	addi	s0,sp,16
    80005fd8:	00000797          	auipc	a5,0x0
    80005fdc:	2f878793          	addi	a5,a5,760 # 800062d0 <kernelvec>
    80005fe0:	10579073          	csrw	stvec,a5
    80005fe4:	00813403          	ld	s0,8(sp)
    80005fe8:	01010113          	addi	sp,sp,16
    80005fec:	00008067          	ret

0000000080005ff0 <usertrap>:
    80005ff0:	ff010113          	addi	sp,sp,-16
    80005ff4:	00813423          	sd	s0,8(sp)
    80005ff8:	01010413          	addi	s0,sp,16
    80005ffc:	00813403          	ld	s0,8(sp)
    80006000:	01010113          	addi	sp,sp,16
    80006004:	00008067          	ret

0000000080006008 <usertrapret>:
    80006008:	ff010113          	addi	sp,sp,-16
    8000600c:	00813423          	sd	s0,8(sp)
    80006010:	01010413          	addi	s0,sp,16
    80006014:	00813403          	ld	s0,8(sp)
    80006018:	01010113          	addi	sp,sp,16
    8000601c:	00008067          	ret

0000000080006020 <kerneltrap>:
    80006020:	fe010113          	addi	sp,sp,-32
    80006024:	00813823          	sd	s0,16(sp)
    80006028:	00113c23          	sd	ra,24(sp)
    8000602c:	00913423          	sd	s1,8(sp)
    80006030:	02010413          	addi	s0,sp,32
    80006034:	142025f3          	csrr	a1,scause
    80006038:	100027f3          	csrr	a5,sstatus
    8000603c:	0027f793          	andi	a5,a5,2
    80006040:	10079c63          	bnez	a5,80006158 <kerneltrap+0x138>
    80006044:	142027f3          	csrr	a5,scause
    80006048:	0207ce63          	bltz	a5,80006084 <kerneltrap+0x64>
    8000604c:	00002517          	auipc	a0,0x2
    80006050:	52c50513          	addi	a0,a0,1324 # 80008578 <CONSOLE_STATUS+0x568>
    80006054:	00001097          	auipc	ra,0x1
    80006058:	884080e7          	jalr	-1916(ra) # 800068d8 <__printf>
    8000605c:	141025f3          	csrr	a1,sepc
    80006060:	14302673          	csrr	a2,stval
    80006064:	00002517          	auipc	a0,0x2
    80006068:	52450513          	addi	a0,a0,1316 # 80008588 <CONSOLE_STATUS+0x578>
    8000606c:	00001097          	auipc	ra,0x1
    80006070:	86c080e7          	jalr	-1940(ra) # 800068d8 <__printf>
    80006074:	00002517          	auipc	a0,0x2
    80006078:	52c50513          	addi	a0,a0,1324 # 800085a0 <CONSOLE_STATUS+0x590>
    8000607c:	00001097          	auipc	ra,0x1
    80006080:	800080e7          	jalr	-2048(ra) # 8000687c <panic>
    80006084:	0ff7f713          	andi	a4,a5,255
    80006088:	00900693          	li	a3,9
    8000608c:	04d70063          	beq	a4,a3,800060cc <kerneltrap+0xac>
    80006090:	fff00713          	li	a4,-1
    80006094:	03f71713          	slli	a4,a4,0x3f
    80006098:	00170713          	addi	a4,a4,1
    8000609c:	fae798e3          	bne	a5,a4,8000604c <kerneltrap+0x2c>
    800060a0:	00000097          	auipc	ra,0x0
    800060a4:	e00080e7          	jalr	-512(ra) # 80005ea0 <cpuid>
    800060a8:	06050663          	beqz	a0,80006114 <kerneltrap+0xf4>
    800060ac:	144027f3          	csrr	a5,sip
    800060b0:	ffd7f793          	andi	a5,a5,-3
    800060b4:	14479073          	csrw	sip,a5
    800060b8:	01813083          	ld	ra,24(sp)
    800060bc:	01013403          	ld	s0,16(sp)
    800060c0:	00813483          	ld	s1,8(sp)
    800060c4:	02010113          	addi	sp,sp,32
    800060c8:	00008067          	ret
    800060cc:	00000097          	auipc	ra,0x0
    800060d0:	3c8080e7          	jalr	968(ra) # 80006494 <plic_claim>
    800060d4:	00a00793          	li	a5,10
    800060d8:	00050493          	mv	s1,a0
    800060dc:	06f50863          	beq	a0,a5,8000614c <kerneltrap+0x12c>
    800060e0:	fc050ce3          	beqz	a0,800060b8 <kerneltrap+0x98>
    800060e4:	00050593          	mv	a1,a0
    800060e8:	00002517          	auipc	a0,0x2
    800060ec:	47050513          	addi	a0,a0,1136 # 80008558 <CONSOLE_STATUS+0x548>
    800060f0:	00000097          	auipc	ra,0x0
    800060f4:	7e8080e7          	jalr	2024(ra) # 800068d8 <__printf>
    800060f8:	01013403          	ld	s0,16(sp)
    800060fc:	01813083          	ld	ra,24(sp)
    80006100:	00048513          	mv	a0,s1
    80006104:	00813483          	ld	s1,8(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00000317          	auipc	t1,0x0
    80006110:	3c030067          	jr	960(t1) # 800064cc <plic_complete>
    80006114:	00005517          	auipc	a0,0x5
    80006118:	41c50513          	addi	a0,a0,1052 # 8000b530 <tickslock>
    8000611c:	00001097          	auipc	ra,0x1
    80006120:	490080e7          	jalr	1168(ra) # 800075ac <acquire>
    80006124:	00004717          	auipc	a4,0x4
    80006128:	2c070713          	addi	a4,a4,704 # 8000a3e4 <ticks>
    8000612c:	00072783          	lw	a5,0(a4)
    80006130:	00005517          	auipc	a0,0x5
    80006134:	40050513          	addi	a0,a0,1024 # 8000b530 <tickslock>
    80006138:	0017879b          	addiw	a5,a5,1
    8000613c:	00f72023          	sw	a5,0(a4)
    80006140:	00001097          	auipc	ra,0x1
    80006144:	538080e7          	jalr	1336(ra) # 80007678 <release>
    80006148:	f65ff06f          	j	800060ac <kerneltrap+0x8c>
    8000614c:	00001097          	auipc	ra,0x1
    80006150:	094080e7          	jalr	148(ra) # 800071e0 <uartintr>
    80006154:	fa5ff06f          	j	800060f8 <kerneltrap+0xd8>
    80006158:	00002517          	auipc	a0,0x2
    8000615c:	3e050513          	addi	a0,a0,992 # 80008538 <CONSOLE_STATUS+0x528>
    80006160:	00000097          	auipc	ra,0x0
    80006164:	71c080e7          	jalr	1820(ra) # 8000687c <panic>

0000000080006168 <clockintr>:
    80006168:	fe010113          	addi	sp,sp,-32
    8000616c:	00813823          	sd	s0,16(sp)
    80006170:	00913423          	sd	s1,8(sp)
    80006174:	00113c23          	sd	ra,24(sp)
    80006178:	02010413          	addi	s0,sp,32
    8000617c:	00005497          	auipc	s1,0x5
    80006180:	3b448493          	addi	s1,s1,948 # 8000b530 <tickslock>
    80006184:	00048513          	mv	a0,s1
    80006188:	00001097          	auipc	ra,0x1
    8000618c:	424080e7          	jalr	1060(ra) # 800075ac <acquire>
    80006190:	00004717          	auipc	a4,0x4
    80006194:	25470713          	addi	a4,a4,596 # 8000a3e4 <ticks>
    80006198:	00072783          	lw	a5,0(a4)
    8000619c:	01013403          	ld	s0,16(sp)
    800061a0:	01813083          	ld	ra,24(sp)
    800061a4:	00048513          	mv	a0,s1
    800061a8:	0017879b          	addiw	a5,a5,1
    800061ac:	00813483          	ld	s1,8(sp)
    800061b0:	00f72023          	sw	a5,0(a4)
    800061b4:	02010113          	addi	sp,sp,32
    800061b8:	00001317          	auipc	t1,0x1
    800061bc:	4c030067          	jr	1216(t1) # 80007678 <release>

00000000800061c0 <devintr>:
    800061c0:	142027f3          	csrr	a5,scause
    800061c4:	00000513          	li	a0,0
    800061c8:	0007c463          	bltz	a5,800061d0 <devintr+0x10>
    800061cc:	00008067          	ret
    800061d0:	fe010113          	addi	sp,sp,-32
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00113c23          	sd	ra,24(sp)
    800061dc:	00913423          	sd	s1,8(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	0ff7f713          	andi	a4,a5,255
    800061e8:	00900693          	li	a3,9
    800061ec:	04d70c63          	beq	a4,a3,80006244 <devintr+0x84>
    800061f0:	fff00713          	li	a4,-1
    800061f4:	03f71713          	slli	a4,a4,0x3f
    800061f8:	00170713          	addi	a4,a4,1
    800061fc:	00e78c63          	beq	a5,a4,80006214 <devintr+0x54>
    80006200:	01813083          	ld	ra,24(sp)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	00813483          	ld	s1,8(sp)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00008067          	ret
    80006214:	00000097          	auipc	ra,0x0
    80006218:	c8c080e7          	jalr	-884(ra) # 80005ea0 <cpuid>
    8000621c:	06050663          	beqz	a0,80006288 <devintr+0xc8>
    80006220:	144027f3          	csrr	a5,sip
    80006224:	ffd7f793          	andi	a5,a5,-3
    80006228:	14479073          	csrw	sip,a5
    8000622c:	01813083          	ld	ra,24(sp)
    80006230:	01013403          	ld	s0,16(sp)
    80006234:	00813483          	ld	s1,8(sp)
    80006238:	00200513          	li	a0,2
    8000623c:	02010113          	addi	sp,sp,32
    80006240:	00008067          	ret
    80006244:	00000097          	auipc	ra,0x0
    80006248:	250080e7          	jalr	592(ra) # 80006494 <plic_claim>
    8000624c:	00a00793          	li	a5,10
    80006250:	00050493          	mv	s1,a0
    80006254:	06f50663          	beq	a0,a5,800062c0 <devintr+0x100>
    80006258:	00100513          	li	a0,1
    8000625c:	fa0482e3          	beqz	s1,80006200 <devintr+0x40>
    80006260:	00048593          	mv	a1,s1
    80006264:	00002517          	auipc	a0,0x2
    80006268:	2f450513          	addi	a0,a0,756 # 80008558 <CONSOLE_STATUS+0x548>
    8000626c:	00000097          	auipc	ra,0x0
    80006270:	66c080e7          	jalr	1644(ra) # 800068d8 <__printf>
    80006274:	00048513          	mv	a0,s1
    80006278:	00000097          	auipc	ra,0x0
    8000627c:	254080e7          	jalr	596(ra) # 800064cc <plic_complete>
    80006280:	00100513          	li	a0,1
    80006284:	f7dff06f          	j	80006200 <devintr+0x40>
    80006288:	00005517          	auipc	a0,0x5
    8000628c:	2a850513          	addi	a0,a0,680 # 8000b530 <tickslock>
    80006290:	00001097          	auipc	ra,0x1
    80006294:	31c080e7          	jalr	796(ra) # 800075ac <acquire>
    80006298:	00004717          	auipc	a4,0x4
    8000629c:	14c70713          	addi	a4,a4,332 # 8000a3e4 <ticks>
    800062a0:	00072783          	lw	a5,0(a4)
    800062a4:	00005517          	auipc	a0,0x5
    800062a8:	28c50513          	addi	a0,a0,652 # 8000b530 <tickslock>
    800062ac:	0017879b          	addiw	a5,a5,1
    800062b0:	00f72023          	sw	a5,0(a4)
    800062b4:	00001097          	auipc	ra,0x1
    800062b8:	3c4080e7          	jalr	964(ra) # 80007678 <release>
    800062bc:	f65ff06f          	j	80006220 <devintr+0x60>
    800062c0:	00001097          	auipc	ra,0x1
    800062c4:	f20080e7          	jalr	-224(ra) # 800071e0 <uartintr>
    800062c8:	fadff06f          	j	80006274 <devintr+0xb4>
    800062cc:	0000                	unimp
	...

00000000800062d0 <kernelvec>:
    800062d0:	f0010113          	addi	sp,sp,-256
    800062d4:	00113023          	sd	ra,0(sp)
    800062d8:	00213423          	sd	sp,8(sp)
    800062dc:	00313823          	sd	gp,16(sp)
    800062e0:	00413c23          	sd	tp,24(sp)
    800062e4:	02513023          	sd	t0,32(sp)
    800062e8:	02613423          	sd	t1,40(sp)
    800062ec:	02713823          	sd	t2,48(sp)
    800062f0:	02813c23          	sd	s0,56(sp)
    800062f4:	04913023          	sd	s1,64(sp)
    800062f8:	04a13423          	sd	a0,72(sp)
    800062fc:	04b13823          	sd	a1,80(sp)
    80006300:	04c13c23          	sd	a2,88(sp)
    80006304:	06d13023          	sd	a3,96(sp)
    80006308:	06e13423          	sd	a4,104(sp)
    8000630c:	06f13823          	sd	a5,112(sp)
    80006310:	07013c23          	sd	a6,120(sp)
    80006314:	09113023          	sd	a7,128(sp)
    80006318:	09213423          	sd	s2,136(sp)
    8000631c:	09313823          	sd	s3,144(sp)
    80006320:	09413c23          	sd	s4,152(sp)
    80006324:	0b513023          	sd	s5,160(sp)
    80006328:	0b613423          	sd	s6,168(sp)
    8000632c:	0b713823          	sd	s7,176(sp)
    80006330:	0b813c23          	sd	s8,184(sp)
    80006334:	0d913023          	sd	s9,192(sp)
    80006338:	0da13423          	sd	s10,200(sp)
    8000633c:	0db13823          	sd	s11,208(sp)
    80006340:	0dc13c23          	sd	t3,216(sp)
    80006344:	0fd13023          	sd	t4,224(sp)
    80006348:	0fe13423          	sd	t5,232(sp)
    8000634c:	0ff13823          	sd	t6,240(sp)
    80006350:	cd1ff0ef          	jal	ra,80006020 <kerneltrap>
    80006354:	00013083          	ld	ra,0(sp)
    80006358:	00813103          	ld	sp,8(sp)
    8000635c:	01013183          	ld	gp,16(sp)
    80006360:	02013283          	ld	t0,32(sp)
    80006364:	02813303          	ld	t1,40(sp)
    80006368:	03013383          	ld	t2,48(sp)
    8000636c:	03813403          	ld	s0,56(sp)
    80006370:	04013483          	ld	s1,64(sp)
    80006374:	04813503          	ld	a0,72(sp)
    80006378:	05013583          	ld	a1,80(sp)
    8000637c:	05813603          	ld	a2,88(sp)
    80006380:	06013683          	ld	a3,96(sp)
    80006384:	06813703          	ld	a4,104(sp)
    80006388:	07013783          	ld	a5,112(sp)
    8000638c:	07813803          	ld	a6,120(sp)
    80006390:	08013883          	ld	a7,128(sp)
    80006394:	08813903          	ld	s2,136(sp)
    80006398:	09013983          	ld	s3,144(sp)
    8000639c:	09813a03          	ld	s4,152(sp)
    800063a0:	0a013a83          	ld	s5,160(sp)
    800063a4:	0a813b03          	ld	s6,168(sp)
    800063a8:	0b013b83          	ld	s7,176(sp)
    800063ac:	0b813c03          	ld	s8,184(sp)
    800063b0:	0c013c83          	ld	s9,192(sp)
    800063b4:	0c813d03          	ld	s10,200(sp)
    800063b8:	0d013d83          	ld	s11,208(sp)
    800063bc:	0d813e03          	ld	t3,216(sp)
    800063c0:	0e013e83          	ld	t4,224(sp)
    800063c4:	0e813f03          	ld	t5,232(sp)
    800063c8:	0f013f83          	ld	t6,240(sp)
    800063cc:	10010113          	addi	sp,sp,256
    800063d0:	10200073          	sret
    800063d4:	00000013          	nop
    800063d8:	00000013          	nop
    800063dc:	00000013          	nop

00000000800063e0 <timervec>:
    800063e0:	34051573          	csrrw	a0,mscratch,a0
    800063e4:	00b53023          	sd	a1,0(a0)
    800063e8:	00c53423          	sd	a2,8(a0)
    800063ec:	00d53823          	sd	a3,16(a0)
    800063f0:	01853583          	ld	a1,24(a0)
    800063f4:	02053603          	ld	a2,32(a0)
    800063f8:	0005b683          	ld	a3,0(a1)
    800063fc:	00c686b3          	add	a3,a3,a2
    80006400:	00d5b023          	sd	a3,0(a1)
    80006404:	00200593          	li	a1,2
    80006408:	14459073          	csrw	sip,a1
    8000640c:	01053683          	ld	a3,16(a0)
    80006410:	00853603          	ld	a2,8(a0)
    80006414:	00053583          	ld	a1,0(a0)
    80006418:	34051573          	csrrw	a0,mscratch,a0
    8000641c:	30200073          	mret

0000000080006420 <plicinit>:
    80006420:	ff010113          	addi	sp,sp,-16
    80006424:	00813423          	sd	s0,8(sp)
    80006428:	01010413          	addi	s0,sp,16
    8000642c:	00813403          	ld	s0,8(sp)
    80006430:	0c0007b7          	lui	a5,0xc000
    80006434:	00100713          	li	a4,1
    80006438:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000643c:	00e7a223          	sw	a4,4(a5)
    80006440:	01010113          	addi	sp,sp,16
    80006444:	00008067          	ret

0000000080006448 <plicinithart>:
    80006448:	ff010113          	addi	sp,sp,-16
    8000644c:	00813023          	sd	s0,0(sp)
    80006450:	00113423          	sd	ra,8(sp)
    80006454:	01010413          	addi	s0,sp,16
    80006458:	00000097          	auipc	ra,0x0
    8000645c:	a48080e7          	jalr	-1464(ra) # 80005ea0 <cpuid>
    80006460:	0085171b          	slliw	a4,a0,0x8
    80006464:	0c0027b7          	lui	a5,0xc002
    80006468:	00e787b3          	add	a5,a5,a4
    8000646c:	40200713          	li	a4,1026
    80006470:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006474:	00813083          	ld	ra,8(sp)
    80006478:	00013403          	ld	s0,0(sp)
    8000647c:	00d5151b          	slliw	a0,a0,0xd
    80006480:	0c2017b7          	lui	a5,0xc201
    80006484:	00a78533          	add	a0,a5,a0
    80006488:	00052023          	sw	zero,0(a0)
    8000648c:	01010113          	addi	sp,sp,16
    80006490:	00008067          	ret

0000000080006494 <plic_claim>:
    80006494:	ff010113          	addi	sp,sp,-16
    80006498:	00813023          	sd	s0,0(sp)
    8000649c:	00113423          	sd	ra,8(sp)
    800064a0:	01010413          	addi	s0,sp,16
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	9fc080e7          	jalr	-1540(ra) # 80005ea0 <cpuid>
    800064ac:	00813083          	ld	ra,8(sp)
    800064b0:	00013403          	ld	s0,0(sp)
    800064b4:	00d5151b          	slliw	a0,a0,0xd
    800064b8:	0c2017b7          	lui	a5,0xc201
    800064bc:	00a78533          	add	a0,a5,a0
    800064c0:	00452503          	lw	a0,4(a0)
    800064c4:	01010113          	addi	sp,sp,16
    800064c8:	00008067          	ret

00000000800064cc <plic_complete>:
    800064cc:	fe010113          	addi	sp,sp,-32
    800064d0:	00813823          	sd	s0,16(sp)
    800064d4:	00913423          	sd	s1,8(sp)
    800064d8:	00113c23          	sd	ra,24(sp)
    800064dc:	02010413          	addi	s0,sp,32
    800064e0:	00050493          	mv	s1,a0
    800064e4:	00000097          	auipc	ra,0x0
    800064e8:	9bc080e7          	jalr	-1604(ra) # 80005ea0 <cpuid>
    800064ec:	01813083          	ld	ra,24(sp)
    800064f0:	01013403          	ld	s0,16(sp)
    800064f4:	00d5179b          	slliw	a5,a0,0xd
    800064f8:	0c201737          	lui	a4,0xc201
    800064fc:	00f707b3          	add	a5,a4,a5
    80006500:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006504:	00813483          	ld	s1,8(sp)
    80006508:	02010113          	addi	sp,sp,32
    8000650c:	00008067          	ret

0000000080006510 <consolewrite>:
    80006510:	fb010113          	addi	sp,sp,-80
    80006514:	04813023          	sd	s0,64(sp)
    80006518:	04113423          	sd	ra,72(sp)
    8000651c:	02913c23          	sd	s1,56(sp)
    80006520:	03213823          	sd	s2,48(sp)
    80006524:	03313423          	sd	s3,40(sp)
    80006528:	03413023          	sd	s4,32(sp)
    8000652c:	01513c23          	sd	s5,24(sp)
    80006530:	05010413          	addi	s0,sp,80
    80006534:	06c05c63          	blez	a2,800065ac <consolewrite+0x9c>
    80006538:	00060993          	mv	s3,a2
    8000653c:	00050a13          	mv	s4,a0
    80006540:	00058493          	mv	s1,a1
    80006544:	00000913          	li	s2,0
    80006548:	fff00a93          	li	s5,-1
    8000654c:	01c0006f          	j	80006568 <consolewrite+0x58>
    80006550:	fbf44503          	lbu	a0,-65(s0)
    80006554:	0019091b          	addiw	s2,s2,1
    80006558:	00148493          	addi	s1,s1,1
    8000655c:	00001097          	auipc	ra,0x1
    80006560:	a9c080e7          	jalr	-1380(ra) # 80006ff8 <uartputc>
    80006564:	03298063          	beq	s3,s2,80006584 <consolewrite+0x74>
    80006568:	00048613          	mv	a2,s1
    8000656c:	00100693          	li	a3,1
    80006570:	000a0593          	mv	a1,s4
    80006574:	fbf40513          	addi	a0,s0,-65
    80006578:	00000097          	auipc	ra,0x0
    8000657c:	9e0080e7          	jalr	-1568(ra) # 80005f58 <either_copyin>
    80006580:	fd5518e3          	bne	a0,s5,80006550 <consolewrite+0x40>
    80006584:	04813083          	ld	ra,72(sp)
    80006588:	04013403          	ld	s0,64(sp)
    8000658c:	03813483          	ld	s1,56(sp)
    80006590:	02813983          	ld	s3,40(sp)
    80006594:	02013a03          	ld	s4,32(sp)
    80006598:	01813a83          	ld	s5,24(sp)
    8000659c:	00090513          	mv	a0,s2
    800065a0:	03013903          	ld	s2,48(sp)
    800065a4:	05010113          	addi	sp,sp,80
    800065a8:	00008067          	ret
    800065ac:	00000913          	li	s2,0
    800065b0:	fd5ff06f          	j	80006584 <consolewrite+0x74>

00000000800065b4 <consoleread>:
    800065b4:	f9010113          	addi	sp,sp,-112
    800065b8:	06813023          	sd	s0,96(sp)
    800065bc:	04913c23          	sd	s1,88(sp)
    800065c0:	05213823          	sd	s2,80(sp)
    800065c4:	05313423          	sd	s3,72(sp)
    800065c8:	05413023          	sd	s4,64(sp)
    800065cc:	03513c23          	sd	s5,56(sp)
    800065d0:	03613823          	sd	s6,48(sp)
    800065d4:	03713423          	sd	s7,40(sp)
    800065d8:	03813023          	sd	s8,32(sp)
    800065dc:	06113423          	sd	ra,104(sp)
    800065e0:	01913c23          	sd	s9,24(sp)
    800065e4:	07010413          	addi	s0,sp,112
    800065e8:	00060b93          	mv	s7,a2
    800065ec:	00050913          	mv	s2,a0
    800065f0:	00058c13          	mv	s8,a1
    800065f4:	00060b1b          	sext.w	s6,a2
    800065f8:	00005497          	auipc	s1,0x5
    800065fc:	f6048493          	addi	s1,s1,-160 # 8000b558 <cons>
    80006600:	00400993          	li	s3,4
    80006604:	fff00a13          	li	s4,-1
    80006608:	00a00a93          	li	s5,10
    8000660c:	05705e63          	blez	s7,80006668 <consoleread+0xb4>
    80006610:	09c4a703          	lw	a4,156(s1)
    80006614:	0984a783          	lw	a5,152(s1)
    80006618:	0007071b          	sext.w	a4,a4
    8000661c:	08e78463          	beq	a5,a4,800066a4 <consoleread+0xf0>
    80006620:	07f7f713          	andi	a4,a5,127
    80006624:	00e48733          	add	a4,s1,a4
    80006628:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000662c:	0017869b          	addiw	a3,a5,1
    80006630:	08d4ac23          	sw	a3,152(s1)
    80006634:	00070c9b          	sext.w	s9,a4
    80006638:	0b370663          	beq	a4,s3,800066e4 <consoleread+0x130>
    8000663c:	00100693          	li	a3,1
    80006640:	f9f40613          	addi	a2,s0,-97
    80006644:	000c0593          	mv	a1,s8
    80006648:	00090513          	mv	a0,s2
    8000664c:	f8e40fa3          	sb	a4,-97(s0)
    80006650:	00000097          	auipc	ra,0x0
    80006654:	8bc080e7          	jalr	-1860(ra) # 80005f0c <either_copyout>
    80006658:	01450863          	beq	a0,s4,80006668 <consoleread+0xb4>
    8000665c:	001c0c13          	addi	s8,s8,1
    80006660:	fffb8b9b          	addiw	s7,s7,-1
    80006664:	fb5c94e3          	bne	s9,s5,8000660c <consoleread+0x58>
    80006668:	000b851b          	sext.w	a0,s7
    8000666c:	06813083          	ld	ra,104(sp)
    80006670:	06013403          	ld	s0,96(sp)
    80006674:	05813483          	ld	s1,88(sp)
    80006678:	05013903          	ld	s2,80(sp)
    8000667c:	04813983          	ld	s3,72(sp)
    80006680:	04013a03          	ld	s4,64(sp)
    80006684:	03813a83          	ld	s5,56(sp)
    80006688:	02813b83          	ld	s7,40(sp)
    8000668c:	02013c03          	ld	s8,32(sp)
    80006690:	01813c83          	ld	s9,24(sp)
    80006694:	40ab053b          	subw	a0,s6,a0
    80006698:	03013b03          	ld	s6,48(sp)
    8000669c:	07010113          	addi	sp,sp,112
    800066a0:	00008067          	ret
    800066a4:	00001097          	auipc	ra,0x1
    800066a8:	1d8080e7          	jalr	472(ra) # 8000787c <push_on>
    800066ac:	0984a703          	lw	a4,152(s1)
    800066b0:	09c4a783          	lw	a5,156(s1)
    800066b4:	0007879b          	sext.w	a5,a5
    800066b8:	fef70ce3          	beq	a4,a5,800066b0 <consoleread+0xfc>
    800066bc:	00001097          	auipc	ra,0x1
    800066c0:	234080e7          	jalr	564(ra) # 800078f0 <pop_on>
    800066c4:	0984a783          	lw	a5,152(s1)
    800066c8:	07f7f713          	andi	a4,a5,127
    800066cc:	00e48733          	add	a4,s1,a4
    800066d0:	01874703          	lbu	a4,24(a4)
    800066d4:	0017869b          	addiw	a3,a5,1
    800066d8:	08d4ac23          	sw	a3,152(s1)
    800066dc:	00070c9b          	sext.w	s9,a4
    800066e0:	f5371ee3          	bne	a4,s3,8000663c <consoleread+0x88>
    800066e4:	000b851b          	sext.w	a0,s7
    800066e8:	f96bf2e3          	bgeu	s7,s6,8000666c <consoleread+0xb8>
    800066ec:	08f4ac23          	sw	a5,152(s1)
    800066f0:	f7dff06f          	j	8000666c <consoleread+0xb8>

00000000800066f4 <consputc>:
    800066f4:	10000793          	li	a5,256
    800066f8:	00f50663          	beq	a0,a5,80006704 <consputc+0x10>
    800066fc:	00001317          	auipc	t1,0x1
    80006700:	9f430067          	jr	-1548(t1) # 800070f0 <uartputc_sync>
    80006704:	ff010113          	addi	sp,sp,-16
    80006708:	00113423          	sd	ra,8(sp)
    8000670c:	00813023          	sd	s0,0(sp)
    80006710:	01010413          	addi	s0,sp,16
    80006714:	00800513          	li	a0,8
    80006718:	00001097          	auipc	ra,0x1
    8000671c:	9d8080e7          	jalr	-1576(ra) # 800070f0 <uartputc_sync>
    80006720:	02000513          	li	a0,32
    80006724:	00001097          	auipc	ra,0x1
    80006728:	9cc080e7          	jalr	-1588(ra) # 800070f0 <uartputc_sync>
    8000672c:	00013403          	ld	s0,0(sp)
    80006730:	00813083          	ld	ra,8(sp)
    80006734:	00800513          	li	a0,8
    80006738:	01010113          	addi	sp,sp,16
    8000673c:	00001317          	auipc	t1,0x1
    80006740:	9b430067          	jr	-1612(t1) # 800070f0 <uartputc_sync>

0000000080006744 <consoleintr>:
    80006744:	fe010113          	addi	sp,sp,-32
    80006748:	00813823          	sd	s0,16(sp)
    8000674c:	00913423          	sd	s1,8(sp)
    80006750:	01213023          	sd	s2,0(sp)
    80006754:	00113c23          	sd	ra,24(sp)
    80006758:	02010413          	addi	s0,sp,32
    8000675c:	00005917          	auipc	s2,0x5
    80006760:	dfc90913          	addi	s2,s2,-516 # 8000b558 <cons>
    80006764:	00050493          	mv	s1,a0
    80006768:	00090513          	mv	a0,s2
    8000676c:	00001097          	auipc	ra,0x1
    80006770:	e40080e7          	jalr	-448(ra) # 800075ac <acquire>
    80006774:	02048c63          	beqz	s1,800067ac <consoleintr+0x68>
    80006778:	0a092783          	lw	a5,160(s2)
    8000677c:	09892703          	lw	a4,152(s2)
    80006780:	07f00693          	li	a3,127
    80006784:	40e7873b          	subw	a4,a5,a4
    80006788:	02e6e263          	bltu	a3,a4,800067ac <consoleintr+0x68>
    8000678c:	00d00713          	li	a4,13
    80006790:	04e48063          	beq	s1,a4,800067d0 <consoleintr+0x8c>
    80006794:	07f7f713          	andi	a4,a5,127
    80006798:	00e90733          	add	a4,s2,a4
    8000679c:	0017879b          	addiw	a5,a5,1
    800067a0:	0af92023          	sw	a5,160(s2)
    800067a4:	00970c23          	sb	s1,24(a4)
    800067a8:	08f92e23          	sw	a5,156(s2)
    800067ac:	01013403          	ld	s0,16(sp)
    800067b0:	01813083          	ld	ra,24(sp)
    800067b4:	00813483          	ld	s1,8(sp)
    800067b8:	00013903          	ld	s2,0(sp)
    800067bc:	00005517          	auipc	a0,0x5
    800067c0:	d9c50513          	addi	a0,a0,-612 # 8000b558 <cons>
    800067c4:	02010113          	addi	sp,sp,32
    800067c8:	00001317          	auipc	t1,0x1
    800067cc:	eb030067          	jr	-336(t1) # 80007678 <release>
    800067d0:	00a00493          	li	s1,10
    800067d4:	fc1ff06f          	j	80006794 <consoleintr+0x50>

00000000800067d8 <consoleinit>:
    800067d8:	fe010113          	addi	sp,sp,-32
    800067dc:	00113c23          	sd	ra,24(sp)
    800067e0:	00813823          	sd	s0,16(sp)
    800067e4:	00913423          	sd	s1,8(sp)
    800067e8:	02010413          	addi	s0,sp,32
    800067ec:	00005497          	auipc	s1,0x5
    800067f0:	d6c48493          	addi	s1,s1,-660 # 8000b558 <cons>
    800067f4:	00048513          	mv	a0,s1
    800067f8:	00002597          	auipc	a1,0x2
    800067fc:	db858593          	addi	a1,a1,-584 # 800085b0 <CONSOLE_STATUS+0x5a0>
    80006800:	00001097          	auipc	ra,0x1
    80006804:	d88080e7          	jalr	-632(ra) # 80007588 <initlock>
    80006808:	00000097          	auipc	ra,0x0
    8000680c:	7ac080e7          	jalr	1964(ra) # 80006fb4 <uartinit>
    80006810:	01813083          	ld	ra,24(sp)
    80006814:	01013403          	ld	s0,16(sp)
    80006818:	00000797          	auipc	a5,0x0
    8000681c:	d9c78793          	addi	a5,a5,-612 # 800065b4 <consoleread>
    80006820:	0af4bc23          	sd	a5,184(s1)
    80006824:	00000797          	auipc	a5,0x0
    80006828:	cec78793          	addi	a5,a5,-788 # 80006510 <consolewrite>
    8000682c:	0cf4b023          	sd	a5,192(s1)
    80006830:	00813483          	ld	s1,8(sp)
    80006834:	02010113          	addi	sp,sp,32
    80006838:	00008067          	ret

000000008000683c <console_read>:
    8000683c:	ff010113          	addi	sp,sp,-16
    80006840:	00813423          	sd	s0,8(sp)
    80006844:	01010413          	addi	s0,sp,16
    80006848:	00813403          	ld	s0,8(sp)
    8000684c:	00005317          	auipc	t1,0x5
    80006850:	dc433303          	ld	t1,-572(t1) # 8000b610 <devsw+0x10>
    80006854:	01010113          	addi	sp,sp,16
    80006858:	00030067          	jr	t1

000000008000685c <console_write>:
    8000685c:	ff010113          	addi	sp,sp,-16
    80006860:	00813423          	sd	s0,8(sp)
    80006864:	01010413          	addi	s0,sp,16
    80006868:	00813403          	ld	s0,8(sp)
    8000686c:	00005317          	auipc	t1,0x5
    80006870:	dac33303          	ld	t1,-596(t1) # 8000b618 <devsw+0x18>
    80006874:	01010113          	addi	sp,sp,16
    80006878:	00030067          	jr	t1

000000008000687c <panic>:
    8000687c:	fe010113          	addi	sp,sp,-32
    80006880:	00113c23          	sd	ra,24(sp)
    80006884:	00813823          	sd	s0,16(sp)
    80006888:	00913423          	sd	s1,8(sp)
    8000688c:	02010413          	addi	s0,sp,32
    80006890:	00050493          	mv	s1,a0
    80006894:	00002517          	auipc	a0,0x2
    80006898:	d2450513          	addi	a0,a0,-732 # 800085b8 <CONSOLE_STATUS+0x5a8>
    8000689c:	00005797          	auipc	a5,0x5
    800068a0:	e007ae23          	sw	zero,-484(a5) # 8000b6b8 <pr+0x18>
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	034080e7          	jalr	52(ra) # 800068d8 <__printf>
    800068ac:	00048513          	mv	a0,s1
    800068b0:	00000097          	auipc	ra,0x0
    800068b4:	028080e7          	jalr	40(ra) # 800068d8 <__printf>
    800068b8:	00002517          	auipc	a0,0x2
    800068bc:	af850513          	addi	a0,a0,-1288 # 800083b0 <CONSOLE_STATUS+0x3a0>
    800068c0:	00000097          	auipc	ra,0x0
    800068c4:	018080e7          	jalr	24(ra) # 800068d8 <__printf>
    800068c8:	00100793          	li	a5,1
    800068cc:	00004717          	auipc	a4,0x4
    800068d0:	b0f72e23          	sw	a5,-1252(a4) # 8000a3e8 <panicked>
    800068d4:	0000006f          	j	800068d4 <panic+0x58>

00000000800068d8 <__printf>:
    800068d8:	f3010113          	addi	sp,sp,-208
    800068dc:	08813023          	sd	s0,128(sp)
    800068e0:	07313423          	sd	s3,104(sp)
    800068e4:	09010413          	addi	s0,sp,144
    800068e8:	05813023          	sd	s8,64(sp)
    800068ec:	08113423          	sd	ra,136(sp)
    800068f0:	06913c23          	sd	s1,120(sp)
    800068f4:	07213823          	sd	s2,112(sp)
    800068f8:	07413023          	sd	s4,96(sp)
    800068fc:	05513c23          	sd	s5,88(sp)
    80006900:	05613823          	sd	s6,80(sp)
    80006904:	05713423          	sd	s7,72(sp)
    80006908:	03913c23          	sd	s9,56(sp)
    8000690c:	03a13823          	sd	s10,48(sp)
    80006910:	03b13423          	sd	s11,40(sp)
    80006914:	00005317          	auipc	t1,0x5
    80006918:	d8c30313          	addi	t1,t1,-628 # 8000b6a0 <pr>
    8000691c:	01832c03          	lw	s8,24(t1)
    80006920:	00b43423          	sd	a1,8(s0)
    80006924:	00c43823          	sd	a2,16(s0)
    80006928:	00d43c23          	sd	a3,24(s0)
    8000692c:	02e43023          	sd	a4,32(s0)
    80006930:	02f43423          	sd	a5,40(s0)
    80006934:	03043823          	sd	a6,48(s0)
    80006938:	03143c23          	sd	a7,56(s0)
    8000693c:	00050993          	mv	s3,a0
    80006940:	4a0c1663          	bnez	s8,80006dec <__printf+0x514>
    80006944:	60098c63          	beqz	s3,80006f5c <__printf+0x684>
    80006948:	0009c503          	lbu	a0,0(s3)
    8000694c:	00840793          	addi	a5,s0,8
    80006950:	f6f43c23          	sd	a5,-136(s0)
    80006954:	00000493          	li	s1,0
    80006958:	22050063          	beqz	a0,80006b78 <__printf+0x2a0>
    8000695c:	00002a37          	lui	s4,0x2
    80006960:	00018ab7          	lui	s5,0x18
    80006964:	000f4b37          	lui	s6,0xf4
    80006968:	00989bb7          	lui	s7,0x989
    8000696c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006970:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006974:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006978:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000697c:	00148c9b          	addiw	s9,s1,1
    80006980:	02500793          	li	a5,37
    80006984:	01998933          	add	s2,s3,s9
    80006988:	38f51263          	bne	a0,a5,80006d0c <__printf+0x434>
    8000698c:	00094783          	lbu	a5,0(s2)
    80006990:	00078c9b          	sext.w	s9,a5
    80006994:	1e078263          	beqz	a5,80006b78 <__printf+0x2a0>
    80006998:	0024849b          	addiw	s1,s1,2
    8000699c:	07000713          	li	a4,112
    800069a0:	00998933          	add	s2,s3,s1
    800069a4:	38e78a63          	beq	a5,a4,80006d38 <__printf+0x460>
    800069a8:	20f76863          	bltu	a4,a5,80006bb8 <__printf+0x2e0>
    800069ac:	42a78863          	beq	a5,a0,80006ddc <__printf+0x504>
    800069b0:	06400713          	li	a4,100
    800069b4:	40e79663          	bne	a5,a4,80006dc0 <__printf+0x4e8>
    800069b8:	f7843783          	ld	a5,-136(s0)
    800069bc:	0007a603          	lw	a2,0(a5)
    800069c0:	00878793          	addi	a5,a5,8
    800069c4:	f6f43c23          	sd	a5,-136(s0)
    800069c8:	42064a63          	bltz	a2,80006dfc <__printf+0x524>
    800069cc:	00a00713          	li	a4,10
    800069d0:	02e677bb          	remuw	a5,a2,a4
    800069d4:	00002d97          	auipc	s11,0x2
    800069d8:	c0cd8d93          	addi	s11,s11,-1012 # 800085e0 <digits>
    800069dc:	00900593          	li	a1,9
    800069e0:	0006051b          	sext.w	a0,a2
    800069e4:	00000c93          	li	s9,0
    800069e8:	02079793          	slli	a5,a5,0x20
    800069ec:	0207d793          	srli	a5,a5,0x20
    800069f0:	00fd87b3          	add	a5,s11,a5
    800069f4:	0007c783          	lbu	a5,0(a5)
    800069f8:	02e656bb          	divuw	a3,a2,a4
    800069fc:	f8f40023          	sb	a5,-128(s0)
    80006a00:	14c5d863          	bge	a1,a2,80006b50 <__printf+0x278>
    80006a04:	06300593          	li	a1,99
    80006a08:	00100c93          	li	s9,1
    80006a0c:	02e6f7bb          	remuw	a5,a3,a4
    80006a10:	02079793          	slli	a5,a5,0x20
    80006a14:	0207d793          	srli	a5,a5,0x20
    80006a18:	00fd87b3          	add	a5,s11,a5
    80006a1c:	0007c783          	lbu	a5,0(a5)
    80006a20:	02e6d73b          	divuw	a4,a3,a4
    80006a24:	f8f400a3          	sb	a5,-127(s0)
    80006a28:	12a5f463          	bgeu	a1,a0,80006b50 <__printf+0x278>
    80006a2c:	00a00693          	li	a3,10
    80006a30:	00900593          	li	a1,9
    80006a34:	02d777bb          	remuw	a5,a4,a3
    80006a38:	02079793          	slli	a5,a5,0x20
    80006a3c:	0207d793          	srli	a5,a5,0x20
    80006a40:	00fd87b3          	add	a5,s11,a5
    80006a44:	0007c503          	lbu	a0,0(a5)
    80006a48:	02d757bb          	divuw	a5,a4,a3
    80006a4c:	f8a40123          	sb	a0,-126(s0)
    80006a50:	48e5f263          	bgeu	a1,a4,80006ed4 <__printf+0x5fc>
    80006a54:	06300513          	li	a0,99
    80006a58:	02d7f5bb          	remuw	a1,a5,a3
    80006a5c:	02059593          	slli	a1,a1,0x20
    80006a60:	0205d593          	srli	a1,a1,0x20
    80006a64:	00bd85b3          	add	a1,s11,a1
    80006a68:	0005c583          	lbu	a1,0(a1)
    80006a6c:	02d7d7bb          	divuw	a5,a5,a3
    80006a70:	f8b401a3          	sb	a1,-125(s0)
    80006a74:	48e57263          	bgeu	a0,a4,80006ef8 <__printf+0x620>
    80006a78:	3e700513          	li	a0,999
    80006a7c:	02d7f5bb          	remuw	a1,a5,a3
    80006a80:	02059593          	slli	a1,a1,0x20
    80006a84:	0205d593          	srli	a1,a1,0x20
    80006a88:	00bd85b3          	add	a1,s11,a1
    80006a8c:	0005c583          	lbu	a1,0(a1)
    80006a90:	02d7d7bb          	divuw	a5,a5,a3
    80006a94:	f8b40223          	sb	a1,-124(s0)
    80006a98:	46e57663          	bgeu	a0,a4,80006f04 <__printf+0x62c>
    80006a9c:	02d7f5bb          	remuw	a1,a5,a3
    80006aa0:	02059593          	slli	a1,a1,0x20
    80006aa4:	0205d593          	srli	a1,a1,0x20
    80006aa8:	00bd85b3          	add	a1,s11,a1
    80006aac:	0005c583          	lbu	a1,0(a1)
    80006ab0:	02d7d7bb          	divuw	a5,a5,a3
    80006ab4:	f8b402a3          	sb	a1,-123(s0)
    80006ab8:	46ea7863          	bgeu	s4,a4,80006f28 <__printf+0x650>
    80006abc:	02d7f5bb          	remuw	a1,a5,a3
    80006ac0:	02059593          	slli	a1,a1,0x20
    80006ac4:	0205d593          	srli	a1,a1,0x20
    80006ac8:	00bd85b3          	add	a1,s11,a1
    80006acc:	0005c583          	lbu	a1,0(a1)
    80006ad0:	02d7d7bb          	divuw	a5,a5,a3
    80006ad4:	f8b40323          	sb	a1,-122(s0)
    80006ad8:	3eeaf863          	bgeu	s5,a4,80006ec8 <__printf+0x5f0>
    80006adc:	02d7f5bb          	remuw	a1,a5,a3
    80006ae0:	02059593          	slli	a1,a1,0x20
    80006ae4:	0205d593          	srli	a1,a1,0x20
    80006ae8:	00bd85b3          	add	a1,s11,a1
    80006aec:	0005c583          	lbu	a1,0(a1)
    80006af0:	02d7d7bb          	divuw	a5,a5,a3
    80006af4:	f8b403a3          	sb	a1,-121(s0)
    80006af8:	42eb7e63          	bgeu	s6,a4,80006f34 <__printf+0x65c>
    80006afc:	02d7f5bb          	remuw	a1,a5,a3
    80006b00:	02059593          	slli	a1,a1,0x20
    80006b04:	0205d593          	srli	a1,a1,0x20
    80006b08:	00bd85b3          	add	a1,s11,a1
    80006b0c:	0005c583          	lbu	a1,0(a1)
    80006b10:	02d7d7bb          	divuw	a5,a5,a3
    80006b14:	f8b40423          	sb	a1,-120(s0)
    80006b18:	42ebfc63          	bgeu	s7,a4,80006f50 <__printf+0x678>
    80006b1c:	02079793          	slli	a5,a5,0x20
    80006b20:	0207d793          	srli	a5,a5,0x20
    80006b24:	00fd8db3          	add	s11,s11,a5
    80006b28:	000dc703          	lbu	a4,0(s11)
    80006b2c:	00a00793          	li	a5,10
    80006b30:	00900c93          	li	s9,9
    80006b34:	f8e404a3          	sb	a4,-119(s0)
    80006b38:	00065c63          	bgez	a2,80006b50 <__printf+0x278>
    80006b3c:	f9040713          	addi	a4,s0,-112
    80006b40:	00f70733          	add	a4,a4,a5
    80006b44:	02d00693          	li	a3,45
    80006b48:	fed70823          	sb	a3,-16(a4)
    80006b4c:	00078c93          	mv	s9,a5
    80006b50:	f8040793          	addi	a5,s0,-128
    80006b54:	01978cb3          	add	s9,a5,s9
    80006b58:	f7f40d13          	addi	s10,s0,-129
    80006b5c:	000cc503          	lbu	a0,0(s9)
    80006b60:	fffc8c93          	addi	s9,s9,-1
    80006b64:	00000097          	auipc	ra,0x0
    80006b68:	b90080e7          	jalr	-1136(ra) # 800066f4 <consputc>
    80006b6c:	ffac98e3          	bne	s9,s10,80006b5c <__printf+0x284>
    80006b70:	00094503          	lbu	a0,0(s2)
    80006b74:	e00514e3          	bnez	a0,8000697c <__printf+0xa4>
    80006b78:	1a0c1663          	bnez	s8,80006d24 <__printf+0x44c>
    80006b7c:	08813083          	ld	ra,136(sp)
    80006b80:	08013403          	ld	s0,128(sp)
    80006b84:	07813483          	ld	s1,120(sp)
    80006b88:	07013903          	ld	s2,112(sp)
    80006b8c:	06813983          	ld	s3,104(sp)
    80006b90:	06013a03          	ld	s4,96(sp)
    80006b94:	05813a83          	ld	s5,88(sp)
    80006b98:	05013b03          	ld	s6,80(sp)
    80006b9c:	04813b83          	ld	s7,72(sp)
    80006ba0:	04013c03          	ld	s8,64(sp)
    80006ba4:	03813c83          	ld	s9,56(sp)
    80006ba8:	03013d03          	ld	s10,48(sp)
    80006bac:	02813d83          	ld	s11,40(sp)
    80006bb0:	0d010113          	addi	sp,sp,208
    80006bb4:	00008067          	ret
    80006bb8:	07300713          	li	a4,115
    80006bbc:	1ce78a63          	beq	a5,a4,80006d90 <__printf+0x4b8>
    80006bc0:	07800713          	li	a4,120
    80006bc4:	1ee79e63          	bne	a5,a4,80006dc0 <__printf+0x4e8>
    80006bc8:	f7843783          	ld	a5,-136(s0)
    80006bcc:	0007a703          	lw	a4,0(a5)
    80006bd0:	00878793          	addi	a5,a5,8
    80006bd4:	f6f43c23          	sd	a5,-136(s0)
    80006bd8:	28074263          	bltz	a4,80006e5c <__printf+0x584>
    80006bdc:	00002d97          	auipc	s11,0x2
    80006be0:	a04d8d93          	addi	s11,s11,-1532 # 800085e0 <digits>
    80006be4:	00f77793          	andi	a5,a4,15
    80006be8:	00fd87b3          	add	a5,s11,a5
    80006bec:	0007c683          	lbu	a3,0(a5)
    80006bf0:	00f00613          	li	a2,15
    80006bf4:	0007079b          	sext.w	a5,a4
    80006bf8:	f8d40023          	sb	a3,-128(s0)
    80006bfc:	0047559b          	srliw	a1,a4,0x4
    80006c00:	0047569b          	srliw	a3,a4,0x4
    80006c04:	00000c93          	li	s9,0
    80006c08:	0ee65063          	bge	a2,a4,80006ce8 <__printf+0x410>
    80006c0c:	00f6f693          	andi	a3,a3,15
    80006c10:	00dd86b3          	add	a3,s11,a3
    80006c14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006c18:	0087d79b          	srliw	a5,a5,0x8
    80006c1c:	00100c93          	li	s9,1
    80006c20:	f8d400a3          	sb	a3,-127(s0)
    80006c24:	0cb67263          	bgeu	a2,a1,80006ce8 <__printf+0x410>
    80006c28:	00f7f693          	andi	a3,a5,15
    80006c2c:	00dd86b3          	add	a3,s11,a3
    80006c30:	0006c583          	lbu	a1,0(a3)
    80006c34:	00f00613          	li	a2,15
    80006c38:	0047d69b          	srliw	a3,a5,0x4
    80006c3c:	f8b40123          	sb	a1,-126(s0)
    80006c40:	0047d593          	srli	a1,a5,0x4
    80006c44:	28f67e63          	bgeu	a2,a5,80006ee0 <__printf+0x608>
    80006c48:	00f6f693          	andi	a3,a3,15
    80006c4c:	00dd86b3          	add	a3,s11,a3
    80006c50:	0006c503          	lbu	a0,0(a3)
    80006c54:	0087d813          	srli	a6,a5,0x8
    80006c58:	0087d69b          	srliw	a3,a5,0x8
    80006c5c:	f8a401a3          	sb	a0,-125(s0)
    80006c60:	28b67663          	bgeu	a2,a1,80006eec <__printf+0x614>
    80006c64:	00f6f693          	andi	a3,a3,15
    80006c68:	00dd86b3          	add	a3,s11,a3
    80006c6c:	0006c583          	lbu	a1,0(a3)
    80006c70:	00c7d513          	srli	a0,a5,0xc
    80006c74:	00c7d69b          	srliw	a3,a5,0xc
    80006c78:	f8b40223          	sb	a1,-124(s0)
    80006c7c:	29067a63          	bgeu	a2,a6,80006f10 <__printf+0x638>
    80006c80:	00f6f693          	andi	a3,a3,15
    80006c84:	00dd86b3          	add	a3,s11,a3
    80006c88:	0006c583          	lbu	a1,0(a3)
    80006c8c:	0107d813          	srli	a6,a5,0x10
    80006c90:	0107d69b          	srliw	a3,a5,0x10
    80006c94:	f8b402a3          	sb	a1,-123(s0)
    80006c98:	28a67263          	bgeu	a2,a0,80006f1c <__printf+0x644>
    80006c9c:	00f6f693          	andi	a3,a3,15
    80006ca0:	00dd86b3          	add	a3,s11,a3
    80006ca4:	0006c683          	lbu	a3,0(a3)
    80006ca8:	0147d79b          	srliw	a5,a5,0x14
    80006cac:	f8d40323          	sb	a3,-122(s0)
    80006cb0:	21067663          	bgeu	a2,a6,80006ebc <__printf+0x5e4>
    80006cb4:	02079793          	slli	a5,a5,0x20
    80006cb8:	0207d793          	srli	a5,a5,0x20
    80006cbc:	00fd8db3          	add	s11,s11,a5
    80006cc0:	000dc683          	lbu	a3,0(s11)
    80006cc4:	00800793          	li	a5,8
    80006cc8:	00700c93          	li	s9,7
    80006ccc:	f8d403a3          	sb	a3,-121(s0)
    80006cd0:	00075c63          	bgez	a4,80006ce8 <__printf+0x410>
    80006cd4:	f9040713          	addi	a4,s0,-112
    80006cd8:	00f70733          	add	a4,a4,a5
    80006cdc:	02d00693          	li	a3,45
    80006ce0:	fed70823          	sb	a3,-16(a4)
    80006ce4:	00078c93          	mv	s9,a5
    80006ce8:	f8040793          	addi	a5,s0,-128
    80006cec:	01978cb3          	add	s9,a5,s9
    80006cf0:	f7f40d13          	addi	s10,s0,-129
    80006cf4:	000cc503          	lbu	a0,0(s9)
    80006cf8:	fffc8c93          	addi	s9,s9,-1
    80006cfc:	00000097          	auipc	ra,0x0
    80006d00:	9f8080e7          	jalr	-1544(ra) # 800066f4 <consputc>
    80006d04:	ff9d18e3          	bne	s10,s9,80006cf4 <__printf+0x41c>
    80006d08:	0100006f          	j	80006d18 <__printf+0x440>
    80006d0c:	00000097          	auipc	ra,0x0
    80006d10:	9e8080e7          	jalr	-1560(ra) # 800066f4 <consputc>
    80006d14:	000c8493          	mv	s1,s9
    80006d18:	00094503          	lbu	a0,0(s2)
    80006d1c:	c60510e3          	bnez	a0,8000697c <__printf+0xa4>
    80006d20:	e40c0ee3          	beqz	s8,80006b7c <__printf+0x2a4>
    80006d24:	00005517          	auipc	a0,0x5
    80006d28:	97c50513          	addi	a0,a0,-1668 # 8000b6a0 <pr>
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	94c080e7          	jalr	-1716(ra) # 80007678 <release>
    80006d34:	e49ff06f          	j	80006b7c <__printf+0x2a4>
    80006d38:	f7843783          	ld	a5,-136(s0)
    80006d3c:	03000513          	li	a0,48
    80006d40:	01000d13          	li	s10,16
    80006d44:	00878713          	addi	a4,a5,8
    80006d48:	0007bc83          	ld	s9,0(a5)
    80006d4c:	f6e43c23          	sd	a4,-136(s0)
    80006d50:	00000097          	auipc	ra,0x0
    80006d54:	9a4080e7          	jalr	-1628(ra) # 800066f4 <consputc>
    80006d58:	07800513          	li	a0,120
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	998080e7          	jalr	-1640(ra) # 800066f4 <consputc>
    80006d64:	00002d97          	auipc	s11,0x2
    80006d68:	87cd8d93          	addi	s11,s11,-1924 # 800085e0 <digits>
    80006d6c:	03ccd793          	srli	a5,s9,0x3c
    80006d70:	00fd87b3          	add	a5,s11,a5
    80006d74:	0007c503          	lbu	a0,0(a5)
    80006d78:	fffd0d1b          	addiw	s10,s10,-1
    80006d7c:	004c9c93          	slli	s9,s9,0x4
    80006d80:	00000097          	auipc	ra,0x0
    80006d84:	974080e7          	jalr	-1676(ra) # 800066f4 <consputc>
    80006d88:	fe0d12e3          	bnez	s10,80006d6c <__printf+0x494>
    80006d8c:	f8dff06f          	j	80006d18 <__printf+0x440>
    80006d90:	f7843783          	ld	a5,-136(s0)
    80006d94:	0007bc83          	ld	s9,0(a5)
    80006d98:	00878793          	addi	a5,a5,8
    80006d9c:	f6f43c23          	sd	a5,-136(s0)
    80006da0:	000c9a63          	bnez	s9,80006db4 <__printf+0x4dc>
    80006da4:	1080006f          	j	80006eac <__printf+0x5d4>
    80006da8:	001c8c93          	addi	s9,s9,1
    80006dac:	00000097          	auipc	ra,0x0
    80006db0:	948080e7          	jalr	-1720(ra) # 800066f4 <consputc>
    80006db4:	000cc503          	lbu	a0,0(s9)
    80006db8:	fe0518e3          	bnez	a0,80006da8 <__printf+0x4d0>
    80006dbc:	f5dff06f          	j	80006d18 <__printf+0x440>
    80006dc0:	02500513          	li	a0,37
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	930080e7          	jalr	-1744(ra) # 800066f4 <consputc>
    80006dcc:	000c8513          	mv	a0,s9
    80006dd0:	00000097          	auipc	ra,0x0
    80006dd4:	924080e7          	jalr	-1756(ra) # 800066f4 <consputc>
    80006dd8:	f41ff06f          	j	80006d18 <__printf+0x440>
    80006ddc:	02500513          	li	a0,37
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	914080e7          	jalr	-1772(ra) # 800066f4 <consputc>
    80006de8:	f31ff06f          	j	80006d18 <__printf+0x440>
    80006dec:	00030513          	mv	a0,t1
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	7bc080e7          	jalr	1980(ra) # 800075ac <acquire>
    80006df8:	b4dff06f          	j	80006944 <__printf+0x6c>
    80006dfc:	40c0053b          	negw	a0,a2
    80006e00:	00a00713          	li	a4,10
    80006e04:	02e576bb          	remuw	a3,a0,a4
    80006e08:	00001d97          	auipc	s11,0x1
    80006e0c:	7d8d8d93          	addi	s11,s11,2008 # 800085e0 <digits>
    80006e10:	ff700593          	li	a1,-9
    80006e14:	02069693          	slli	a3,a3,0x20
    80006e18:	0206d693          	srli	a3,a3,0x20
    80006e1c:	00dd86b3          	add	a3,s11,a3
    80006e20:	0006c683          	lbu	a3,0(a3)
    80006e24:	02e557bb          	divuw	a5,a0,a4
    80006e28:	f8d40023          	sb	a3,-128(s0)
    80006e2c:	10b65e63          	bge	a2,a1,80006f48 <__printf+0x670>
    80006e30:	06300593          	li	a1,99
    80006e34:	02e7f6bb          	remuw	a3,a5,a4
    80006e38:	02069693          	slli	a3,a3,0x20
    80006e3c:	0206d693          	srli	a3,a3,0x20
    80006e40:	00dd86b3          	add	a3,s11,a3
    80006e44:	0006c683          	lbu	a3,0(a3)
    80006e48:	02e7d73b          	divuw	a4,a5,a4
    80006e4c:	00200793          	li	a5,2
    80006e50:	f8d400a3          	sb	a3,-127(s0)
    80006e54:	bca5ece3          	bltu	a1,a0,80006a2c <__printf+0x154>
    80006e58:	ce5ff06f          	j	80006b3c <__printf+0x264>
    80006e5c:	40e007bb          	negw	a5,a4
    80006e60:	00001d97          	auipc	s11,0x1
    80006e64:	780d8d93          	addi	s11,s11,1920 # 800085e0 <digits>
    80006e68:	00f7f693          	andi	a3,a5,15
    80006e6c:	00dd86b3          	add	a3,s11,a3
    80006e70:	0006c583          	lbu	a1,0(a3)
    80006e74:	ff100613          	li	a2,-15
    80006e78:	0047d69b          	srliw	a3,a5,0x4
    80006e7c:	f8b40023          	sb	a1,-128(s0)
    80006e80:	0047d59b          	srliw	a1,a5,0x4
    80006e84:	0ac75e63          	bge	a4,a2,80006f40 <__printf+0x668>
    80006e88:	00f6f693          	andi	a3,a3,15
    80006e8c:	00dd86b3          	add	a3,s11,a3
    80006e90:	0006c603          	lbu	a2,0(a3)
    80006e94:	00f00693          	li	a3,15
    80006e98:	0087d79b          	srliw	a5,a5,0x8
    80006e9c:	f8c400a3          	sb	a2,-127(s0)
    80006ea0:	d8b6e4e3          	bltu	a3,a1,80006c28 <__printf+0x350>
    80006ea4:	00200793          	li	a5,2
    80006ea8:	e2dff06f          	j	80006cd4 <__printf+0x3fc>
    80006eac:	00001c97          	auipc	s9,0x1
    80006eb0:	714c8c93          	addi	s9,s9,1812 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80006eb4:	02800513          	li	a0,40
    80006eb8:	ef1ff06f          	j	80006da8 <__printf+0x4d0>
    80006ebc:	00700793          	li	a5,7
    80006ec0:	00600c93          	li	s9,6
    80006ec4:	e0dff06f          	j	80006cd0 <__printf+0x3f8>
    80006ec8:	00700793          	li	a5,7
    80006ecc:	00600c93          	li	s9,6
    80006ed0:	c69ff06f          	j	80006b38 <__printf+0x260>
    80006ed4:	00300793          	li	a5,3
    80006ed8:	00200c93          	li	s9,2
    80006edc:	c5dff06f          	j	80006b38 <__printf+0x260>
    80006ee0:	00300793          	li	a5,3
    80006ee4:	00200c93          	li	s9,2
    80006ee8:	de9ff06f          	j	80006cd0 <__printf+0x3f8>
    80006eec:	00400793          	li	a5,4
    80006ef0:	00300c93          	li	s9,3
    80006ef4:	dddff06f          	j	80006cd0 <__printf+0x3f8>
    80006ef8:	00400793          	li	a5,4
    80006efc:	00300c93          	li	s9,3
    80006f00:	c39ff06f          	j	80006b38 <__printf+0x260>
    80006f04:	00500793          	li	a5,5
    80006f08:	00400c93          	li	s9,4
    80006f0c:	c2dff06f          	j	80006b38 <__printf+0x260>
    80006f10:	00500793          	li	a5,5
    80006f14:	00400c93          	li	s9,4
    80006f18:	db9ff06f          	j	80006cd0 <__printf+0x3f8>
    80006f1c:	00600793          	li	a5,6
    80006f20:	00500c93          	li	s9,5
    80006f24:	dadff06f          	j	80006cd0 <__printf+0x3f8>
    80006f28:	00600793          	li	a5,6
    80006f2c:	00500c93          	li	s9,5
    80006f30:	c09ff06f          	j	80006b38 <__printf+0x260>
    80006f34:	00800793          	li	a5,8
    80006f38:	00700c93          	li	s9,7
    80006f3c:	bfdff06f          	j	80006b38 <__printf+0x260>
    80006f40:	00100793          	li	a5,1
    80006f44:	d91ff06f          	j	80006cd4 <__printf+0x3fc>
    80006f48:	00100793          	li	a5,1
    80006f4c:	bf1ff06f          	j	80006b3c <__printf+0x264>
    80006f50:	00900793          	li	a5,9
    80006f54:	00800c93          	li	s9,8
    80006f58:	be1ff06f          	j	80006b38 <__printf+0x260>
    80006f5c:	00001517          	auipc	a0,0x1
    80006f60:	66c50513          	addi	a0,a0,1644 # 800085c8 <CONSOLE_STATUS+0x5b8>
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	918080e7          	jalr	-1768(ra) # 8000687c <panic>

0000000080006f6c <printfinit>:
    80006f6c:	fe010113          	addi	sp,sp,-32
    80006f70:	00813823          	sd	s0,16(sp)
    80006f74:	00913423          	sd	s1,8(sp)
    80006f78:	00113c23          	sd	ra,24(sp)
    80006f7c:	02010413          	addi	s0,sp,32
    80006f80:	00004497          	auipc	s1,0x4
    80006f84:	72048493          	addi	s1,s1,1824 # 8000b6a0 <pr>
    80006f88:	00048513          	mv	a0,s1
    80006f8c:	00001597          	auipc	a1,0x1
    80006f90:	64c58593          	addi	a1,a1,1612 # 800085d8 <CONSOLE_STATUS+0x5c8>
    80006f94:	00000097          	auipc	ra,0x0
    80006f98:	5f4080e7          	jalr	1524(ra) # 80007588 <initlock>
    80006f9c:	01813083          	ld	ra,24(sp)
    80006fa0:	01013403          	ld	s0,16(sp)
    80006fa4:	0004ac23          	sw	zero,24(s1)
    80006fa8:	00813483          	ld	s1,8(sp)
    80006fac:	02010113          	addi	sp,sp,32
    80006fb0:	00008067          	ret

0000000080006fb4 <uartinit>:
    80006fb4:	ff010113          	addi	sp,sp,-16
    80006fb8:	00813423          	sd	s0,8(sp)
    80006fbc:	01010413          	addi	s0,sp,16
    80006fc0:	100007b7          	lui	a5,0x10000
    80006fc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006fc8:	f8000713          	li	a4,-128
    80006fcc:	00e781a3          	sb	a4,3(a5)
    80006fd0:	00300713          	li	a4,3
    80006fd4:	00e78023          	sb	a4,0(a5)
    80006fd8:	000780a3          	sb	zero,1(a5)
    80006fdc:	00e781a3          	sb	a4,3(a5)
    80006fe0:	00700693          	li	a3,7
    80006fe4:	00d78123          	sb	a3,2(a5)
    80006fe8:	00e780a3          	sb	a4,1(a5)
    80006fec:	00813403          	ld	s0,8(sp)
    80006ff0:	01010113          	addi	sp,sp,16
    80006ff4:	00008067          	ret

0000000080006ff8 <uartputc>:
    80006ff8:	00003797          	auipc	a5,0x3
    80006ffc:	3f07a783          	lw	a5,1008(a5) # 8000a3e8 <panicked>
    80007000:	00078463          	beqz	a5,80007008 <uartputc+0x10>
    80007004:	0000006f          	j	80007004 <uartputc+0xc>
    80007008:	fd010113          	addi	sp,sp,-48
    8000700c:	02813023          	sd	s0,32(sp)
    80007010:	00913c23          	sd	s1,24(sp)
    80007014:	01213823          	sd	s2,16(sp)
    80007018:	01313423          	sd	s3,8(sp)
    8000701c:	02113423          	sd	ra,40(sp)
    80007020:	03010413          	addi	s0,sp,48
    80007024:	00003917          	auipc	s2,0x3
    80007028:	3cc90913          	addi	s2,s2,972 # 8000a3f0 <uart_tx_r>
    8000702c:	00093783          	ld	a5,0(s2)
    80007030:	00003497          	auipc	s1,0x3
    80007034:	3c848493          	addi	s1,s1,968 # 8000a3f8 <uart_tx_w>
    80007038:	0004b703          	ld	a4,0(s1)
    8000703c:	02078693          	addi	a3,a5,32
    80007040:	00050993          	mv	s3,a0
    80007044:	02e69c63          	bne	a3,a4,8000707c <uartputc+0x84>
    80007048:	00001097          	auipc	ra,0x1
    8000704c:	834080e7          	jalr	-1996(ra) # 8000787c <push_on>
    80007050:	00093783          	ld	a5,0(s2)
    80007054:	0004b703          	ld	a4,0(s1)
    80007058:	02078793          	addi	a5,a5,32
    8000705c:	00e79463          	bne	a5,a4,80007064 <uartputc+0x6c>
    80007060:	0000006f          	j	80007060 <uartputc+0x68>
    80007064:	00001097          	auipc	ra,0x1
    80007068:	88c080e7          	jalr	-1908(ra) # 800078f0 <pop_on>
    8000706c:	00093783          	ld	a5,0(s2)
    80007070:	0004b703          	ld	a4,0(s1)
    80007074:	02078693          	addi	a3,a5,32
    80007078:	fce688e3          	beq	a3,a4,80007048 <uartputc+0x50>
    8000707c:	01f77693          	andi	a3,a4,31
    80007080:	00004597          	auipc	a1,0x4
    80007084:	64058593          	addi	a1,a1,1600 # 8000b6c0 <uart_tx_buf>
    80007088:	00d586b3          	add	a3,a1,a3
    8000708c:	00170713          	addi	a4,a4,1
    80007090:	01368023          	sb	s3,0(a3)
    80007094:	00e4b023          	sd	a4,0(s1)
    80007098:	10000637          	lui	a2,0x10000
    8000709c:	02f71063          	bne	a4,a5,800070bc <uartputc+0xc4>
    800070a0:	0340006f          	j	800070d4 <uartputc+0xdc>
    800070a4:	00074703          	lbu	a4,0(a4)
    800070a8:	00f93023          	sd	a5,0(s2)
    800070ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800070b0:	00093783          	ld	a5,0(s2)
    800070b4:	0004b703          	ld	a4,0(s1)
    800070b8:	00f70e63          	beq	a4,a5,800070d4 <uartputc+0xdc>
    800070bc:	00564683          	lbu	a3,5(a2)
    800070c0:	01f7f713          	andi	a4,a5,31
    800070c4:	00e58733          	add	a4,a1,a4
    800070c8:	0206f693          	andi	a3,a3,32
    800070cc:	00178793          	addi	a5,a5,1
    800070d0:	fc069ae3          	bnez	a3,800070a4 <uartputc+0xac>
    800070d4:	02813083          	ld	ra,40(sp)
    800070d8:	02013403          	ld	s0,32(sp)
    800070dc:	01813483          	ld	s1,24(sp)
    800070e0:	01013903          	ld	s2,16(sp)
    800070e4:	00813983          	ld	s3,8(sp)
    800070e8:	03010113          	addi	sp,sp,48
    800070ec:	00008067          	ret

00000000800070f0 <uartputc_sync>:
    800070f0:	ff010113          	addi	sp,sp,-16
    800070f4:	00813423          	sd	s0,8(sp)
    800070f8:	01010413          	addi	s0,sp,16
    800070fc:	00003717          	auipc	a4,0x3
    80007100:	2ec72703          	lw	a4,748(a4) # 8000a3e8 <panicked>
    80007104:	02071663          	bnez	a4,80007130 <uartputc_sync+0x40>
    80007108:	00050793          	mv	a5,a0
    8000710c:	100006b7          	lui	a3,0x10000
    80007110:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007114:	02077713          	andi	a4,a4,32
    80007118:	fe070ce3          	beqz	a4,80007110 <uartputc_sync+0x20>
    8000711c:	0ff7f793          	andi	a5,a5,255
    80007120:	00f68023          	sb	a5,0(a3)
    80007124:	00813403          	ld	s0,8(sp)
    80007128:	01010113          	addi	sp,sp,16
    8000712c:	00008067          	ret
    80007130:	0000006f          	j	80007130 <uartputc_sync+0x40>

0000000080007134 <uartstart>:
    80007134:	ff010113          	addi	sp,sp,-16
    80007138:	00813423          	sd	s0,8(sp)
    8000713c:	01010413          	addi	s0,sp,16
    80007140:	00003617          	auipc	a2,0x3
    80007144:	2b060613          	addi	a2,a2,688 # 8000a3f0 <uart_tx_r>
    80007148:	00003517          	auipc	a0,0x3
    8000714c:	2b050513          	addi	a0,a0,688 # 8000a3f8 <uart_tx_w>
    80007150:	00063783          	ld	a5,0(a2)
    80007154:	00053703          	ld	a4,0(a0)
    80007158:	04f70263          	beq	a4,a5,8000719c <uartstart+0x68>
    8000715c:	100005b7          	lui	a1,0x10000
    80007160:	00004817          	auipc	a6,0x4
    80007164:	56080813          	addi	a6,a6,1376 # 8000b6c0 <uart_tx_buf>
    80007168:	01c0006f          	j	80007184 <uartstart+0x50>
    8000716c:	0006c703          	lbu	a4,0(a3)
    80007170:	00f63023          	sd	a5,0(a2)
    80007174:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007178:	00063783          	ld	a5,0(a2)
    8000717c:	00053703          	ld	a4,0(a0)
    80007180:	00f70e63          	beq	a4,a5,8000719c <uartstart+0x68>
    80007184:	01f7f713          	andi	a4,a5,31
    80007188:	00e806b3          	add	a3,a6,a4
    8000718c:	0055c703          	lbu	a4,5(a1)
    80007190:	00178793          	addi	a5,a5,1
    80007194:	02077713          	andi	a4,a4,32
    80007198:	fc071ae3          	bnez	a4,8000716c <uartstart+0x38>
    8000719c:	00813403          	ld	s0,8(sp)
    800071a0:	01010113          	addi	sp,sp,16
    800071a4:	00008067          	ret

00000000800071a8 <uartgetc>:
    800071a8:	ff010113          	addi	sp,sp,-16
    800071ac:	00813423          	sd	s0,8(sp)
    800071b0:	01010413          	addi	s0,sp,16
    800071b4:	10000737          	lui	a4,0x10000
    800071b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800071bc:	0017f793          	andi	a5,a5,1
    800071c0:	00078c63          	beqz	a5,800071d8 <uartgetc+0x30>
    800071c4:	00074503          	lbu	a0,0(a4)
    800071c8:	0ff57513          	andi	a0,a0,255
    800071cc:	00813403          	ld	s0,8(sp)
    800071d0:	01010113          	addi	sp,sp,16
    800071d4:	00008067          	ret
    800071d8:	fff00513          	li	a0,-1
    800071dc:	ff1ff06f          	j	800071cc <uartgetc+0x24>

00000000800071e0 <uartintr>:
    800071e0:	100007b7          	lui	a5,0x10000
    800071e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800071e8:	0017f793          	andi	a5,a5,1
    800071ec:	0a078463          	beqz	a5,80007294 <uartintr+0xb4>
    800071f0:	fe010113          	addi	sp,sp,-32
    800071f4:	00813823          	sd	s0,16(sp)
    800071f8:	00913423          	sd	s1,8(sp)
    800071fc:	00113c23          	sd	ra,24(sp)
    80007200:	02010413          	addi	s0,sp,32
    80007204:	100004b7          	lui	s1,0x10000
    80007208:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000720c:	0ff57513          	andi	a0,a0,255
    80007210:	fffff097          	auipc	ra,0xfffff
    80007214:	534080e7          	jalr	1332(ra) # 80006744 <consoleintr>
    80007218:	0054c783          	lbu	a5,5(s1)
    8000721c:	0017f793          	andi	a5,a5,1
    80007220:	fe0794e3          	bnez	a5,80007208 <uartintr+0x28>
    80007224:	00003617          	auipc	a2,0x3
    80007228:	1cc60613          	addi	a2,a2,460 # 8000a3f0 <uart_tx_r>
    8000722c:	00003517          	auipc	a0,0x3
    80007230:	1cc50513          	addi	a0,a0,460 # 8000a3f8 <uart_tx_w>
    80007234:	00063783          	ld	a5,0(a2)
    80007238:	00053703          	ld	a4,0(a0)
    8000723c:	04f70263          	beq	a4,a5,80007280 <uartintr+0xa0>
    80007240:	100005b7          	lui	a1,0x10000
    80007244:	00004817          	auipc	a6,0x4
    80007248:	47c80813          	addi	a6,a6,1148 # 8000b6c0 <uart_tx_buf>
    8000724c:	01c0006f          	j	80007268 <uartintr+0x88>
    80007250:	0006c703          	lbu	a4,0(a3)
    80007254:	00f63023          	sd	a5,0(a2)
    80007258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000725c:	00063783          	ld	a5,0(a2)
    80007260:	00053703          	ld	a4,0(a0)
    80007264:	00f70e63          	beq	a4,a5,80007280 <uartintr+0xa0>
    80007268:	01f7f713          	andi	a4,a5,31
    8000726c:	00e806b3          	add	a3,a6,a4
    80007270:	0055c703          	lbu	a4,5(a1)
    80007274:	00178793          	addi	a5,a5,1
    80007278:	02077713          	andi	a4,a4,32
    8000727c:	fc071ae3          	bnez	a4,80007250 <uartintr+0x70>
    80007280:	01813083          	ld	ra,24(sp)
    80007284:	01013403          	ld	s0,16(sp)
    80007288:	00813483          	ld	s1,8(sp)
    8000728c:	02010113          	addi	sp,sp,32
    80007290:	00008067          	ret
    80007294:	00003617          	auipc	a2,0x3
    80007298:	15c60613          	addi	a2,a2,348 # 8000a3f0 <uart_tx_r>
    8000729c:	00003517          	auipc	a0,0x3
    800072a0:	15c50513          	addi	a0,a0,348 # 8000a3f8 <uart_tx_w>
    800072a4:	00063783          	ld	a5,0(a2)
    800072a8:	00053703          	ld	a4,0(a0)
    800072ac:	04f70263          	beq	a4,a5,800072f0 <uartintr+0x110>
    800072b0:	100005b7          	lui	a1,0x10000
    800072b4:	00004817          	auipc	a6,0x4
    800072b8:	40c80813          	addi	a6,a6,1036 # 8000b6c0 <uart_tx_buf>
    800072bc:	01c0006f          	j	800072d8 <uartintr+0xf8>
    800072c0:	0006c703          	lbu	a4,0(a3)
    800072c4:	00f63023          	sd	a5,0(a2)
    800072c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072cc:	00063783          	ld	a5,0(a2)
    800072d0:	00053703          	ld	a4,0(a0)
    800072d4:	02f70063          	beq	a4,a5,800072f4 <uartintr+0x114>
    800072d8:	01f7f713          	andi	a4,a5,31
    800072dc:	00e806b3          	add	a3,a6,a4
    800072e0:	0055c703          	lbu	a4,5(a1)
    800072e4:	00178793          	addi	a5,a5,1
    800072e8:	02077713          	andi	a4,a4,32
    800072ec:	fc071ae3          	bnez	a4,800072c0 <uartintr+0xe0>
    800072f0:	00008067          	ret
    800072f4:	00008067          	ret

00000000800072f8 <kinit>:
    800072f8:	fc010113          	addi	sp,sp,-64
    800072fc:	02913423          	sd	s1,40(sp)
    80007300:	fffff7b7          	lui	a5,0xfffff
    80007304:	00005497          	auipc	s1,0x5
    80007308:	3db48493          	addi	s1,s1,987 # 8000c6df <end+0xfff>
    8000730c:	02813823          	sd	s0,48(sp)
    80007310:	01313c23          	sd	s3,24(sp)
    80007314:	00f4f4b3          	and	s1,s1,a5
    80007318:	02113c23          	sd	ra,56(sp)
    8000731c:	03213023          	sd	s2,32(sp)
    80007320:	01413823          	sd	s4,16(sp)
    80007324:	01513423          	sd	s5,8(sp)
    80007328:	04010413          	addi	s0,sp,64
    8000732c:	000017b7          	lui	a5,0x1
    80007330:	01100993          	li	s3,17
    80007334:	00f487b3          	add	a5,s1,a5
    80007338:	01b99993          	slli	s3,s3,0x1b
    8000733c:	06f9e063          	bltu	s3,a5,8000739c <kinit+0xa4>
    80007340:	00004a97          	auipc	s5,0x4
    80007344:	3a0a8a93          	addi	s5,s5,928 # 8000b6e0 <end>
    80007348:	0754ec63          	bltu	s1,s5,800073c0 <kinit+0xc8>
    8000734c:	0734fa63          	bgeu	s1,s3,800073c0 <kinit+0xc8>
    80007350:	00088a37          	lui	s4,0x88
    80007354:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007358:	00003917          	auipc	s2,0x3
    8000735c:	0a890913          	addi	s2,s2,168 # 8000a400 <kmem>
    80007360:	00ca1a13          	slli	s4,s4,0xc
    80007364:	0140006f          	j	80007378 <kinit+0x80>
    80007368:	000017b7          	lui	a5,0x1
    8000736c:	00f484b3          	add	s1,s1,a5
    80007370:	0554e863          	bltu	s1,s5,800073c0 <kinit+0xc8>
    80007374:	0534f663          	bgeu	s1,s3,800073c0 <kinit+0xc8>
    80007378:	00001637          	lui	a2,0x1
    8000737c:	00100593          	li	a1,1
    80007380:	00048513          	mv	a0,s1
    80007384:	00000097          	auipc	ra,0x0
    80007388:	5e4080e7          	jalr	1508(ra) # 80007968 <__memset>
    8000738c:	00093783          	ld	a5,0(s2)
    80007390:	00f4b023          	sd	a5,0(s1)
    80007394:	00993023          	sd	s1,0(s2)
    80007398:	fd4498e3          	bne	s1,s4,80007368 <kinit+0x70>
    8000739c:	03813083          	ld	ra,56(sp)
    800073a0:	03013403          	ld	s0,48(sp)
    800073a4:	02813483          	ld	s1,40(sp)
    800073a8:	02013903          	ld	s2,32(sp)
    800073ac:	01813983          	ld	s3,24(sp)
    800073b0:	01013a03          	ld	s4,16(sp)
    800073b4:	00813a83          	ld	s5,8(sp)
    800073b8:	04010113          	addi	sp,sp,64
    800073bc:	00008067          	ret
    800073c0:	00001517          	auipc	a0,0x1
    800073c4:	23850513          	addi	a0,a0,568 # 800085f8 <digits+0x18>
    800073c8:	fffff097          	auipc	ra,0xfffff
    800073cc:	4b4080e7          	jalr	1204(ra) # 8000687c <panic>

00000000800073d0 <freerange>:
    800073d0:	fc010113          	addi	sp,sp,-64
    800073d4:	000017b7          	lui	a5,0x1
    800073d8:	02913423          	sd	s1,40(sp)
    800073dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800073e0:	009504b3          	add	s1,a0,s1
    800073e4:	fffff537          	lui	a0,0xfffff
    800073e8:	02813823          	sd	s0,48(sp)
    800073ec:	02113c23          	sd	ra,56(sp)
    800073f0:	03213023          	sd	s2,32(sp)
    800073f4:	01313c23          	sd	s3,24(sp)
    800073f8:	01413823          	sd	s4,16(sp)
    800073fc:	01513423          	sd	s5,8(sp)
    80007400:	01613023          	sd	s6,0(sp)
    80007404:	04010413          	addi	s0,sp,64
    80007408:	00a4f4b3          	and	s1,s1,a0
    8000740c:	00f487b3          	add	a5,s1,a5
    80007410:	06f5e463          	bltu	a1,a5,80007478 <freerange+0xa8>
    80007414:	00004a97          	auipc	s5,0x4
    80007418:	2cca8a93          	addi	s5,s5,716 # 8000b6e0 <end>
    8000741c:	0954e263          	bltu	s1,s5,800074a0 <freerange+0xd0>
    80007420:	01100993          	li	s3,17
    80007424:	01b99993          	slli	s3,s3,0x1b
    80007428:	0734fc63          	bgeu	s1,s3,800074a0 <freerange+0xd0>
    8000742c:	00058a13          	mv	s4,a1
    80007430:	00003917          	auipc	s2,0x3
    80007434:	fd090913          	addi	s2,s2,-48 # 8000a400 <kmem>
    80007438:	00002b37          	lui	s6,0x2
    8000743c:	0140006f          	j	80007450 <freerange+0x80>
    80007440:	000017b7          	lui	a5,0x1
    80007444:	00f484b3          	add	s1,s1,a5
    80007448:	0554ec63          	bltu	s1,s5,800074a0 <freerange+0xd0>
    8000744c:	0534fa63          	bgeu	s1,s3,800074a0 <freerange+0xd0>
    80007450:	00001637          	lui	a2,0x1
    80007454:	00100593          	li	a1,1
    80007458:	00048513          	mv	a0,s1
    8000745c:	00000097          	auipc	ra,0x0
    80007460:	50c080e7          	jalr	1292(ra) # 80007968 <__memset>
    80007464:	00093703          	ld	a4,0(s2)
    80007468:	016487b3          	add	a5,s1,s6
    8000746c:	00e4b023          	sd	a4,0(s1)
    80007470:	00993023          	sd	s1,0(s2)
    80007474:	fcfa76e3          	bgeu	s4,a5,80007440 <freerange+0x70>
    80007478:	03813083          	ld	ra,56(sp)
    8000747c:	03013403          	ld	s0,48(sp)
    80007480:	02813483          	ld	s1,40(sp)
    80007484:	02013903          	ld	s2,32(sp)
    80007488:	01813983          	ld	s3,24(sp)
    8000748c:	01013a03          	ld	s4,16(sp)
    80007490:	00813a83          	ld	s5,8(sp)
    80007494:	00013b03          	ld	s6,0(sp)
    80007498:	04010113          	addi	sp,sp,64
    8000749c:	00008067          	ret
    800074a0:	00001517          	auipc	a0,0x1
    800074a4:	15850513          	addi	a0,a0,344 # 800085f8 <digits+0x18>
    800074a8:	fffff097          	auipc	ra,0xfffff
    800074ac:	3d4080e7          	jalr	980(ra) # 8000687c <panic>

00000000800074b0 <kfree>:
    800074b0:	fe010113          	addi	sp,sp,-32
    800074b4:	00813823          	sd	s0,16(sp)
    800074b8:	00113c23          	sd	ra,24(sp)
    800074bc:	00913423          	sd	s1,8(sp)
    800074c0:	02010413          	addi	s0,sp,32
    800074c4:	03451793          	slli	a5,a0,0x34
    800074c8:	04079c63          	bnez	a5,80007520 <kfree+0x70>
    800074cc:	00004797          	auipc	a5,0x4
    800074d0:	21478793          	addi	a5,a5,532 # 8000b6e0 <end>
    800074d4:	00050493          	mv	s1,a0
    800074d8:	04f56463          	bltu	a0,a5,80007520 <kfree+0x70>
    800074dc:	01100793          	li	a5,17
    800074e0:	01b79793          	slli	a5,a5,0x1b
    800074e4:	02f57e63          	bgeu	a0,a5,80007520 <kfree+0x70>
    800074e8:	00001637          	lui	a2,0x1
    800074ec:	00100593          	li	a1,1
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	478080e7          	jalr	1144(ra) # 80007968 <__memset>
    800074f8:	00003797          	auipc	a5,0x3
    800074fc:	f0878793          	addi	a5,a5,-248 # 8000a400 <kmem>
    80007500:	0007b703          	ld	a4,0(a5)
    80007504:	01813083          	ld	ra,24(sp)
    80007508:	01013403          	ld	s0,16(sp)
    8000750c:	00e4b023          	sd	a4,0(s1)
    80007510:	0097b023          	sd	s1,0(a5)
    80007514:	00813483          	ld	s1,8(sp)
    80007518:	02010113          	addi	sp,sp,32
    8000751c:	00008067          	ret
    80007520:	00001517          	auipc	a0,0x1
    80007524:	0d850513          	addi	a0,a0,216 # 800085f8 <digits+0x18>
    80007528:	fffff097          	auipc	ra,0xfffff
    8000752c:	354080e7          	jalr	852(ra) # 8000687c <panic>

0000000080007530 <kalloc>:
    80007530:	fe010113          	addi	sp,sp,-32
    80007534:	00813823          	sd	s0,16(sp)
    80007538:	00913423          	sd	s1,8(sp)
    8000753c:	00113c23          	sd	ra,24(sp)
    80007540:	02010413          	addi	s0,sp,32
    80007544:	00003797          	auipc	a5,0x3
    80007548:	ebc78793          	addi	a5,a5,-324 # 8000a400 <kmem>
    8000754c:	0007b483          	ld	s1,0(a5)
    80007550:	02048063          	beqz	s1,80007570 <kalloc+0x40>
    80007554:	0004b703          	ld	a4,0(s1)
    80007558:	00001637          	lui	a2,0x1
    8000755c:	00500593          	li	a1,5
    80007560:	00048513          	mv	a0,s1
    80007564:	00e7b023          	sd	a4,0(a5)
    80007568:	00000097          	auipc	ra,0x0
    8000756c:	400080e7          	jalr	1024(ra) # 80007968 <__memset>
    80007570:	01813083          	ld	ra,24(sp)
    80007574:	01013403          	ld	s0,16(sp)
    80007578:	00048513          	mv	a0,s1
    8000757c:	00813483          	ld	s1,8(sp)
    80007580:	02010113          	addi	sp,sp,32
    80007584:	00008067          	ret

0000000080007588 <initlock>:
    80007588:	ff010113          	addi	sp,sp,-16
    8000758c:	00813423          	sd	s0,8(sp)
    80007590:	01010413          	addi	s0,sp,16
    80007594:	00813403          	ld	s0,8(sp)
    80007598:	00b53423          	sd	a1,8(a0)
    8000759c:	00052023          	sw	zero,0(a0)
    800075a0:	00053823          	sd	zero,16(a0)
    800075a4:	01010113          	addi	sp,sp,16
    800075a8:	00008067          	ret

00000000800075ac <acquire>:
    800075ac:	fe010113          	addi	sp,sp,-32
    800075b0:	00813823          	sd	s0,16(sp)
    800075b4:	00913423          	sd	s1,8(sp)
    800075b8:	00113c23          	sd	ra,24(sp)
    800075bc:	01213023          	sd	s2,0(sp)
    800075c0:	02010413          	addi	s0,sp,32
    800075c4:	00050493          	mv	s1,a0
    800075c8:	10002973          	csrr	s2,sstatus
    800075cc:	100027f3          	csrr	a5,sstatus
    800075d0:	ffd7f793          	andi	a5,a5,-3
    800075d4:	10079073          	csrw	sstatus,a5
    800075d8:	fffff097          	auipc	ra,0xfffff
    800075dc:	8e8080e7          	jalr	-1816(ra) # 80005ec0 <mycpu>
    800075e0:	07852783          	lw	a5,120(a0)
    800075e4:	06078e63          	beqz	a5,80007660 <acquire+0xb4>
    800075e8:	fffff097          	auipc	ra,0xfffff
    800075ec:	8d8080e7          	jalr	-1832(ra) # 80005ec0 <mycpu>
    800075f0:	07852783          	lw	a5,120(a0)
    800075f4:	0004a703          	lw	a4,0(s1)
    800075f8:	0017879b          	addiw	a5,a5,1
    800075fc:	06f52c23          	sw	a5,120(a0)
    80007600:	04071063          	bnez	a4,80007640 <acquire+0x94>
    80007604:	00100713          	li	a4,1
    80007608:	00070793          	mv	a5,a4
    8000760c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007610:	0007879b          	sext.w	a5,a5
    80007614:	fe079ae3          	bnez	a5,80007608 <acquire+0x5c>
    80007618:	0ff0000f          	fence
    8000761c:	fffff097          	auipc	ra,0xfffff
    80007620:	8a4080e7          	jalr	-1884(ra) # 80005ec0 <mycpu>
    80007624:	01813083          	ld	ra,24(sp)
    80007628:	01013403          	ld	s0,16(sp)
    8000762c:	00a4b823          	sd	a0,16(s1)
    80007630:	00013903          	ld	s2,0(sp)
    80007634:	00813483          	ld	s1,8(sp)
    80007638:	02010113          	addi	sp,sp,32
    8000763c:	00008067          	ret
    80007640:	0104b903          	ld	s2,16(s1)
    80007644:	fffff097          	auipc	ra,0xfffff
    80007648:	87c080e7          	jalr	-1924(ra) # 80005ec0 <mycpu>
    8000764c:	faa91ce3          	bne	s2,a0,80007604 <acquire+0x58>
    80007650:	00001517          	auipc	a0,0x1
    80007654:	fb050513          	addi	a0,a0,-80 # 80008600 <digits+0x20>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	224080e7          	jalr	548(ra) # 8000687c <panic>
    80007660:	00195913          	srli	s2,s2,0x1
    80007664:	fffff097          	auipc	ra,0xfffff
    80007668:	85c080e7          	jalr	-1956(ra) # 80005ec0 <mycpu>
    8000766c:	00197913          	andi	s2,s2,1
    80007670:	07252e23          	sw	s2,124(a0)
    80007674:	f75ff06f          	j	800075e8 <acquire+0x3c>

0000000080007678 <release>:
    80007678:	fe010113          	addi	sp,sp,-32
    8000767c:	00813823          	sd	s0,16(sp)
    80007680:	00113c23          	sd	ra,24(sp)
    80007684:	00913423          	sd	s1,8(sp)
    80007688:	01213023          	sd	s2,0(sp)
    8000768c:	02010413          	addi	s0,sp,32
    80007690:	00052783          	lw	a5,0(a0)
    80007694:	00079a63          	bnez	a5,800076a8 <release+0x30>
    80007698:	00001517          	auipc	a0,0x1
    8000769c:	f7050513          	addi	a0,a0,-144 # 80008608 <digits+0x28>
    800076a0:	fffff097          	auipc	ra,0xfffff
    800076a4:	1dc080e7          	jalr	476(ra) # 8000687c <panic>
    800076a8:	01053903          	ld	s2,16(a0)
    800076ac:	00050493          	mv	s1,a0
    800076b0:	fffff097          	auipc	ra,0xfffff
    800076b4:	810080e7          	jalr	-2032(ra) # 80005ec0 <mycpu>
    800076b8:	fea910e3          	bne	s2,a0,80007698 <release+0x20>
    800076bc:	0004b823          	sd	zero,16(s1)
    800076c0:	0ff0000f          	fence
    800076c4:	0f50000f          	fence	iorw,ow
    800076c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800076cc:	ffffe097          	auipc	ra,0xffffe
    800076d0:	7f4080e7          	jalr	2036(ra) # 80005ec0 <mycpu>
    800076d4:	100027f3          	csrr	a5,sstatus
    800076d8:	0027f793          	andi	a5,a5,2
    800076dc:	04079a63          	bnez	a5,80007730 <release+0xb8>
    800076e0:	07852783          	lw	a5,120(a0)
    800076e4:	02f05e63          	blez	a5,80007720 <release+0xa8>
    800076e8:	fff7871b          	addiw	a4,a5,-1
    800076ec:	06e52c23          	sw	a4,120(a0)
    800076f0:	00071c63          	bnez	a4,80007708 <release+0x90>
    800076f4:	07c52783          	lw	a5,124(a0)
    800076f8:	00078863          	beqz	a5,80007708 <release+0x90>
    800076fc:	100027f3          	csrr	a5,sstatus
    80007700:	0027e793          	ori	a5,a5,2
    80007704:	10079073          	csrw	sstatus,a5
    80007708:	01813083          	ld	ra,24(sp)
    8000770c:	01013403          	ld	s0,16(sp)
    80007710:	00813483          	ld	s1,8(sp)
    80007714:	00013903          	ld	s2,0(sp)
    80007718:	02010113          	addi	sp,sp,32
    8000771c:	00008067          	ret
    80007720:	00001517          	auipc	a0,0x1
    80007724:	f0850513          	addi	a0,a0,-248 # 80008628 <digits+0x48>
    80007728:	fffff097          	auipc	ra,0xfffff
    8000772c:	154080e7          	jalr	340(ra) # 8000687c <panic>
    80007730:	00001517          	auipc	a0,0x1
    80007734:	ee050513          	addi	a0,a0,-288 # 80008610 <digits+0x30>
    80007738:	fffff097          	auipc	ra,0xfffff
    8000773c:	144080e7          	jalr	324(ra) # 8000687c <panic>

0000000080007740 <holding>:
    80007740:	00052783          	lw	a5,0(a0)
    80007744:	00079663          	bnez	a5,80007750 <holding+0x10>
    80007748:	00000513          	li	a0,0
    8000774c:	00008067          	ret
    80007750:	fe010113          	addi	sp,sp,-32
    80007754:	00813823          	sd	s0,16(sp)
    80007758:	00913423          	sd	s1,8(sp)
    8000775c:	00113c23          	sd	ra,24(sp)
    80007760:	02010413          	addi	s0,sp,32
    80007764:	01053483          	ld	s1,16(a0)
    80007768:	ffffe097          	auipc	ra,0xffffe
    8000776c:	758080e7          	jalr	1880(ra) # 80005ec0 <mycpu>
    80007770:	01813083          	ld	ra,24(sp)
    80007774:	01013403          	ld	s0,16(sp)
    80007778:	40a48533          	sub	a0,s1,a0
    8000777c:	00153513          	seqz	a0,a0
    80007780:	00813483          	ld	s1,8(sp)
    80007784:	02010113          	addi	sp,sp,32
    80007788:	00008067          	ret

000000008000778c <push_off>:
    8000778c:	fe010113          	addi	sp,sp,-32
    80007790:	00813823          	sd	s0,16(sp)
    80007794:	00113c23          	sd	ra,24(sp)
    80007798:	00913423          	sd	s1,8(sp)
    8000779c:	02010413          	addi	s0,sp,32
    800077a0:	100024f3          	csrr	s1,sstatus
    800077a4:	100027f3          	csrr	a5,sstatus
    800077a8:	ffd7f793          	andi	a5,a5,-3
    800077ac:	10079073          	csrw	sstatus,a5
    800077b0:	ffffe097          	auipc	ra,0xffffe
    800077b4:	710080e7          	jalr	1808(ra) # 80005ec0 <mycpu>
    800077b8:	07852783          	lw	a5,120(a0)
    800077bc:	02078663          	beqz	a5,800077e8 <push_off+0x5c>
    800077c0:	ffffe097          	auipc	ra,0xffffe
    800077c4:	700080e7          	jalr	1792(ra) # 80005ec0 <mycpu>
    800077c8:	07852783          	lw	a5,120(a0)
    800077cc:	01813083          	ld	ra,24(sp)
    800077d0:	01013403          	ld	s0,16(sp)
    800077d4:	0017879b          	addiw	a5,a5,1
    800077d8:	06f52c23          	sw	a5,120(a0)
    800077dc:	00813483          	ld	s1,8(sp)
    800077e0:	02010113          	addi	sp,sp,32
    800077e4:	00008067          	ret
    800077e8:	0014d493          	srli	s1,s1,0x1
    800077ec:	ffffe097          	auipc	ra,0xffffe
    800077f0:	6d4080e7          	jalr	1748(ra) # 80005ec0 <mycpu>
    800077f4:	0014f493          	andi	s1,s1,1
    800077f8:	06952e23          	sw	s1,124(a0)
    800077fc:	fc5ff06f          	j	800077c0 <push_off+0x34>

0000000080007800 <pop_off>:
    80007800:	ff010113          	addi	sp,sp,-16
    80007804:	00813023          	sd	s0,0(sp)
    80007808:	00113423          	sd	ra,8(sp)
    8000780c:	01010413          	addi	s0,sp,16
    80007810:	ffffe097          	auipc	ra,0xffffe
    80007814:	6b0080e7          	jalr	1712(ra) # 80005ec0 <mycpu>
    80007818:	100027f3          	csrr	a5,sstatus
    8000781c:	0027f793          	andi	a5,a5,2
    80007820:	04079663          	bnez	a5,8000786c <pop_off+0x6c>
    80007824:	07852783          	lw	a5,120(a0)
    80007828:	02f05a63          	blez	a5,8000785c <pop_off+0x5c>
    8000782c:	fff7871b          	addiw	a4,a5,-1
    80007830:	06e52c23          	sw	a4,120(a0)
    80007834:	00071c63          	bnez	a4,8000784c <pop_off+0x4c>
    80007838:	07c52783          	lw	a5,124(a0)
    8000783c:	00078863          	beqz	a5,8000784c <pop_off+0x4c>
    80007840:	100027f3          	csrr	a5,sstatus
    80007844:	0027e793          	ori	a5,a5,2
    80007848:	10079073          	csrw	sstatus,a5
    8000784c:	00813083          	ld	ra,8(sp)
    80007850:	00013403          	ld	s0,0(sp)
    80007854:	01010113          	addi	sp,sp,16
    80007858:	00008067          	ret
    8000785c:	00001517          	auipc	a0,0x1
    80007860:	dcc50513          	addi	a0,a0,-564 # 80008628 <digits+0x48>
    80007864:	fffff097          	auipc	ra,0xfffff
    80007868:	018080e7          	jalr	24(ra) # 8000687c <panic>
    8000786c:	00001517          	auipc	a0,0x1
    80007870:	da450513          	addi	a0,a0,-604 # 80008610 <digits+0x30>
    80007874:	fffff097          	auipc	ra,0xfffff
    80007878:	008080e7          	jalr	8(ra) # 8000687c <panic>

000000008000787c <push_on>:
    8000787c:	fe010113          	addi	sp,sp,-32
    80007880:	00813823          	sd	s0,16(sp)
    80007884:	00113c23          	sd	ra,24(sp)
    80007888:	00913423          	sd	s1,8(sp)
    8000788c:	02010413          	addi	s0,sp,32
    80007890:	100024f3          	csrr	s1,sstatus
    80007894:	100027f3          	csrr	a5,sstatus
    80007898:	0027e793          	ori	a5,a5,2
    8000789c:	10079073          	csrw	sstatus,a5
    800078a0:	ffffe097          	auipc	ra,0xffffe
    800078a4:	620080e7          	jalr	1568(ra) # 80005ec0 <mycpu>
    800078a8:	07852783          	lw	a5,120(a0)
    800078ac:	02078663          	beqz	a5,800078d8 <push_on+0x5c>
    800078b0:	ffffe097          	auipc	ra,0xffffe
    800078b4:	610080e7          	jalr	1552(ra) # 80005ec0 <mycpu>
    800078b8:	07852783          	lw	a5,120(a0)
    800078bc:	01813083          	ld	ra,24(sp)
    800078c0:	01013403          	ld	s0,16(sp)
    800078c4:	0017879b          	addiw	a5,a5,1
    800078c8:	06f52c23          	sw	a5,120(a0)
    800078cc:	00813483          	ld	s1,8(sp)
    800078d0:	02010113          	addi	sp,sp,32
    800078d4:	00008067          	ret
    800078d8:	0014d493          	srli	s1,s1,0x1
    800078dc:	ffffe097          	auipc	ra,0xffffe
    800078e0:	5e4080e7          	jalr	1508(ra) # 80005ec0 <mycpu>
    800078e4:	0014f493          	andi	s1,s1,1
    800078e8:	06952e23          	sw	s1,124(a0)
    800078ec:	fc5ff06f          	j	800078b0 <push_on+0x34>

00000000800078f0 <pop_on>:
    800078f0:	ff010113          	addi	sp,sp,-16
    800078f4:	00813023          	sd	s0,0(sp)
    800078f8:	00113423          	sd	ra,8(sp)
    800078fc:	01010413          	addi	s0,sp,16
    80007900:	ffffe097          	auipc	ra,0xffffe
    80007904:	5c0080e7          	jalr	1472(ra) # 80005ec0 <mycpu>
    80007908:	100027f3          	csrr	a5,sstatus
    8000790c:	0027f793          	andi	a5,a5,2
    80007910:	04078463          	beqz	a5,80007958 <pop_on+0x68>
    80007914:	07852783          	lw	a5,120(a0)
    80007918:	02f05863          	blez	a5,80007948 <pop_on+0x58>
    8000791c:	fff7879b          	addiw	a5,a5,-1
    80007920:	06f52c23          	sw	a5,120(a0)
    80007924:	07853783          	ld	a5,120(a0)
    80007928:	00079863          	bnez	a5,80007938 <pop_on+0x48>
    8000792c:	100027f3          	csrr	a5,sstatus
    80007930:	ffd7f793          	andi	a5,a5,-3
    80007934:	10079073          	csrw	sstatus,a5
    80007938:	00813083          	ld	ra,8(sp)
    8000793c:	00013403          	ld	s0,0(sp)
    80007940:	01010113          	addi	sp,sp,16
    80007944:	00008067          	ret
    80007948:	00001517          	auipc	a0,0x1
    8000794c:	d0850513          	addi	a0,a0,-760 # 80008650 <digits+0x70>
    80007950:	fffff097          	auipc	ra,0xfffff
    80007954:	f2c080e7          	jalr	-212(ra) # 8000687c <panic>
    80007958:	00001517          	auipc	a0,0x1
    8000795c:	cd850513          	addi	a0,a0,-808 # 80008630 <digits+0x50>
    80007960:	fffff097          	auipc	ra,0xfffff
    80007964:	f1c080e7          	jalr	-228(ra) # 8000687c <panic>

0000000080007968 <__memset>:
    80007968:	ff010113          	addi	sp,sp,-16
    8000796c:	00813423          	sd	s0,8(sp)
    80007970:	01010413          	addi	s0,sp,16
    80007974:	1a060e63          	beqz	a2,80007b30 <__memset+0x1c8>
    80007978:	40a007b3          	neg	a5,a0
    8000797c:	0077f793          	andi	a5,a5,7
    80007980:	00778693          	addi	a3,a5,7
    80007984:	00b00813          	li	a6,11
    80007988:	0ff5f593          	andi	a1,a1,255
    8000798c:	fff6071b          	addiw	a4,a2,-1
    80007990:	1b06e663          	bltu	a3,a6,80007b3c <__memset+0x1d4>
    80007994:	1cd76463          	bltu	a4,a3,80007b5c <__memset+0x1f4>
    80007998:	1a078e63          	beqz	a5,80007b54 <__memset+0x1ec>
    8000799c:	00b50023          	sb	a1,0(a0)
    800079a0:	00100713          	li	a4,1
    800079a4:	1ae78463          	beq	a5,a4,80007b4c <__memset+0x1e4>
    800079a8:	00b500a3          	sb	a1,1(a0)
    800079ac:	00200713          	li	a4,2
    800079b0:	1ae78a63          	beq	a5,a4,80007b64 <__memset+0x1fc>
    800079b4:	00b50123          	sb	a1,2(a0)
    800079b8:	00300713          	li	a4,3
    800079bc:	18e78463          	beq	a5,a4,80007b44 <__memset+0x1dc>
    800079c0:	00b501a3          	sb	a1,3(a0)
    800079c4:	00400713          	li	a4,4
    800079c8:	1ae78263          	beq	a5,a4,80007b6c <__memset+0x204>
    800079cc:	00b50223          	sb	a1,4(a0)
    800079d0:	00500713          	li	a4,5
    800079d4:	1ae78063          	beq	a5,a4,80007b74 <__memset+0x20c>
    800079d8:	00b502a3          	sb	a1,5(a0)
    800079dc:	00700713          	li	a4,7
    800079e0:	18e79e63          	bne	a5,a4,80007b7c <__memset+0x214>
    800079e4:	00b50323          	sb	a1,6(a0)
    800079e8:	00700e93          	li	t4,7
    800079ec:	00859713          	slli	a4,a1,0x8
    800079f0:	00e5e733          	or	a4,a1,a4
    800079f4:	01059e13          	slli	t3,a1,0x10
    800079f8:	01c76e33          	or	t3,a4,t3
    800079fc:	01859313          	slli	t1,a1,0x18
    80007a00:	006e6333          	or	t1,t3,t1
    80007a04:	02059893          	slli	a7,a1,0x20
    80007a08:	40f60e3b          	subw	t3,a2,a5
    80007a0c:	011368b3          	or	a7,t1,a7
    80007a10:	02859813          	slli	a6,a1,0x28
    80007a14:	0108e833          	or	a6,a7,a6
    80007a18:	03059693          	slli	a3,a1,0x30
    80007a1c:	003e589b          	srliw	a7,t3,0x3
    80007a20:	00d866b3          	or	a3,a6,a3
    80007a24:	03859713          	slli	a4,a1,0x38
    80007a28:	00389813          	slli	a6,a7,0x3
    80007a2c:	00f507b3          	add	a5,a0,a5
    80007a30:	00e6e733          	or	a4,a3,a4
    80007a34:	000e089b          	sext.w	a7,t3
    80007a38:	00f806b3          	add	a3,a6,a5
    80007a3c:	00e7b023          	sd	a4,0(a5)
    80007a40:	00878793          	addi	a5,a5,8
    80007a44:	fed79ce3          	bne	a5,a3,80007a3c <__memset+0xd4>
    80007a48:	ff8e7793          	andi	a5,t3,-8
    80007a4c:	0007871b          	sext.w	a4,a5
    80007a50:	01d787bb          	addw	a5,a5,t4
    80007a54:	0ce88e63          	beq	a7,a4,80007b30 <__memset+0x1c8>
    80007a58:	00f50733          	add	a4,a0,a5
    80007a5c:	00b70023          	sb	a1,0(a4)
    80007a60:	0017871b          	addiw	a4,a5,1
    80007a64:	0cc77663          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007a68:	00e50733          	add	a4,a0,a4
    80007a6c:	00b70023          	sb	a1,0(a4)
    80007a70:	0027871b          	addiw	a4,a5,2
    80007a74:	0ac77e63          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007a78:	00e50733          	add	a4,a0,a4
    80007a7c:	00b70023          	sb	a1,0(a4)
    80007a80:	0037871b          	addiw	a4,a5,3
    80007a84:	0ac77663          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007a88:	00e50733          	add	a4,a0,a4
    80007a8c:	00b70023          	sb	a1,0(a4)
    80007a90:	0047871b          	addiw	a4,a5,4
    80007a94:	08c77e63          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007a98:	00e50733          	add	a4,a0,a4
    80007a9c:	00b70023          	sb	a1,0(a4)
    80007aa0:	0057871b          	addiw	a4,a5,5
    80007aa4:	08c77663          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007aa8:	00e50733          	add	a4,a0,a4
    80007aac:	00b70023          	sb	a1,0(a4)
    80007ab0:	0067871b          	addiw	a4,a5,6
    80007ab4:	06c77e63          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007ab8:	00e50733          	add	a4,a0,a4
    80007abc:	00b70023          	sb	a1,0(a4)
    80007ac0:	0077871b          	addiw	a4,a5,7
    80007ac4:	06c77663          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007ac8:	00e50733          	add	a4,a0,a4
    80007acc:	00b70023          	sb	a1,0(a4)
    80007ad0:	0087871b          	addiw	a4,a5,8
    80007ad4:	04c77e63          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007ad8:	00e50733          	add	a4,a0,a4
    80007adc:	00b70023          	sb	a1,0(a4)
    80007ae0:	0097871b          	addiw	a4,a5,9
    80007ae4:	04c77663          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007ae8:	00e50733          	add	a4,a0,a4
    80007aec:	00b70023          	sb	a1,0(a4)
    80007af0:	00a7871b          	addiw	a4,a5,10
    80007af4:	02c77e63          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007af8:	00e50733          	add	a4,a0,a4
    80007afc:	00b70023          	sb	a1,0(a4)
    80007b00:	00b7871b          	addiw	a4,a5,11
    80007b04:	02c77663          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00b70023          	sb	a1,0(a4)
    80007b10:	00c7871b          	addiw	a4,a5,12
    80007b14:	00c77e63          	bgeu	a4,a2,80007b30 <__memset+0x1c8>
    80007b18:	00e50733          	add	a4,a0,a4
    80007b1c:	00b70023          	sb	a1,0(a4)
    80007b20:	00d7879b          	addiw	a5,a5,13
    80007b24:	00c7f663          	bgeu	a5,a2,80007b30 <__memset+0x1c8>
    80007b28:	00f507b3          	add	a5,a0,a5
    80007b2c:	00b78023          	sb	a1,0(a5)
    80007b30:	00813403          	ld	s0,8(sp)
    80007b34:	01010113          	addi	sp,sp,16
    80007b38:	00008067          	ret
    80007b3c:	00b00693          	li	a3,11
    80007b40:	e55ff06f          	j	80007994 <__memset+0x2c>
    80007b44:	00300e93          	li	t4,3
    80007b48:	ea5ff06f          	j	800079ec <__memset+0x84>
    80007b4c:	00100e93          	li	t4,1
    80007b50:	e9dff06f          	j	800079ec <__memset+0x84>
    80007b54:	00000e93          	li	t4,0
    80007b58:	e95ff06f          	j	800079ec <__memset+0x84>
    80007b5c:	00000793          	li	a5,0
    80007b60:	ef9ff06f          	j	80007a58 <__memset+0xf0>
    80007b64:	00200e93          	li	t4,2
    80007b68:	e85ff06f          	j	800079ec <__memset+0x84>
    80007b6c:	00400e93          	li	t4,4
    80007b70:	e7dff06f          	j	800079ec <__memset+0x84>
    80007b74:	00500e93          	li	t4,5
    80007b78:	e75ff06f          	j	800079ec <__memset+0x84>
    80007b7c:	00600e93          	li	t4,6
    80007b80:	e6dff06f          	j	800079ec <__memset+0x84>

0000000080007b84 <__memmove>:
    80007b84:	ff010113          	addi	sp,sp,-16
    80007b88:	00813423          	sd	s0,8(sp)
    80007b8c:	01010413          	addi	s0,sp,16
    80007b90:	0e060863          	beqz	a2,80007c80 <__memmove+0xfc>
    80007b94:	fff6069b          	addiw	a3,a2,-1
    80007b98:	0006881b          	sext.w	a6,a3
    80007b9c:	0ea5e863          	bltu	a1,a0,80007c8c <__memmove+0x108>
    80007ba0:	00758713          	addi	a4,a1,7
    80007ba4:	00a5e7b3          	or	a5,a1,a0
    80007ba8:	40a70733          	sub	a4,a4,a0
    80007bac:	0077f793          	andi	a5,a5,7
    80007bb0:	00f73713          	sltiu	a4,a4,15
    80007bb4:	00174713          	xori	a4,a4,1
    80007bb8:	0017b793          	seqz	a5,a5
    80007bbc:	00e7f7b3          	and	a5,a5,a4
    80007bc0:	10078863          	beqz	a5,80007cd0 <__memmove+0x14c>
    80007bc4:	00900793          	li	a5,9
    80007bc8:	1107f463          	bgeu	a5,a6,80007cd0 <__memmove+0x14c>
    80007bcc:	0036581b          	srliw	a6,a2,0x3
    80007bd0:	fff8081b          	addiw	a6,a6,-1
    80007bd4:	02081813          	slli	a6,a6,0x20
    80007bd8:	01d85893          	srli	a7,a6,0x1d
    80007bdc:	00858813          	addi	a6,a1,8
    80007be0:	00058793          	mv	a5,a1
    80007be4:	00050713          	mv	a4,a0
    80007be8:	01088833          	add	a6,a7,a6
    80007bec:	0007b883          	ld	a7,0(a5)
    80007bf0:	00878793          	addi	a5,a5,8
    80007bf4:	00870713          	addi	a4,a4,8
    80007bf8:	ff173c23          	sd	a7,-8(a4)
    80007bfc:	ff0798e3          	bne	a5,a6,80007bec <__memmove+0x68>
    80007c00:	ff867713          	andi	a4,a2,-8
    80007c04:	02071793          	slli	a5,a4,0x20
    80007c08:	0207d793          	srli	a5,a5,0x20
    80007c0c:	00f585b3          	add	a1,a1,a5
    80007c10:	40e686bb          	subw	a3,a3,a4
    80007c14:	00f507b3          	add	a5,a0,a5
    80007c18:	06e60463          	beq	a2,a4,80007c80 <__memmove+0xfc>
    80007c1c:	0005c703          	lbu	a4,0(a1)
    80007c20:	00e78023          	sb	a4,0(a5)
    80007c24:	04068e63          	beqz	a3,80007c80 <__memmove+0xfc>
    80007c28:	0015c603          	lbu	a2,1(a1)
    80007c2c:	00100713          	li	a4,1
    80007c30:	00c780a3          	sb	a2,1(a5)
    80007c34:	04e68663          	beq	a3,a4,80007c80 <__memmove+0xfc>
    80007c38:	0025c603          	lbu	a2,2(a1)
    80007c3c:	00200713          	li	a4,2
    80007c40:	00c78123          	sb	a2,2(a5)
    80007c44:	02e68e63          	beq	a3,a4,80007c80 <__memmove+0xfc>
    80007c48:	0035c603          	lbu	a2,3(a1)
    80007c4c:	00300713          	li	a4,3
    80007c50:	00c781a3          	sb	a2,3(a5)
    80007c54:	02e68663          	beq	a3,a4,80007c80 <__memmove+0xfc>
    80007c58:	0045c603          	lbu	a2,4(a1)
    80007c5c:	00400713          	li	a4,4
    80007c60:	00c78223          	sb	a2,4(a5)
    80007c64:	00e68e63          	beq	a3,a4,80007c80 <__memmove+0xfc>
    80007c68:	0055c603          	lbu	a2,5(a1)
    80007c6c:	00500713          	li	a4,5
    80007c70:	00c782a3          	sb	a2,5(a5)
    80007c74:	00e68663          	beq	a3,a4,80007c80 <__memmove+0xfc>
    80007c78:	0065c703          	lbu	a4,6(a1)
    80007c7c:	00e78323          	sb	a4,6(a5)
    80007c80:	00813403          	ld	s0,8(sp)
    80007c84:	01010113          	addi	sp,sp,16
    80007c88:	00008067          	ret
    80007c8c:	02061713          	slli	a4,a2,0x20
    80007c90:	02075713          	srli	a4,a4,0x20
    80007c94:	00e587b3          	add	a5,a1,a4
    80007c98:	f0f574e3          	bgeu	a0,a5,80007ba0 <__memmove+0x1c>
    80007c9c:	02069613          	slli	a2,a3,0x20
    80007ca0:	02065613          	srli	a2,a2,0x20
    80007ca4:	fff64613          	not	a2,a2
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00c78633          	add	a2,a5,a2
    80007cb0:	fff7c683          	lbu	a3,-1(a5)
    80007cb4:	fff78793          	addi	a5,a5,-1
    80007cb8:	fff70713          	addi	a4,a4,-1
    80007cbc:	00d70023          	sb	a3,0(a4)
    80007cc0:	fec798e3          	bne	a5,a2,80007cb0 <__memmove+0x12c>
    80007cc4:	00813403          	ld	s0,8(sp)
    80007cc8:	01010113          	addi	sp,sp,16
    80007ccc:	00008067          	ret
    80007cd0:	02069713          	slli	a4,a3,0x20
    80007cd4:	02075713          	srli	a4,a4,0x20
    80007cd8:	00170713          	addi	a4,a4,1
    80007cdc:	00e50733          	add	a4,a0,a4
    80007ce0:	00050793          	mv	a5,a0
    80007ce4:	0005c683          	lbu	a3,0(a1)
    80007ce8:	00178793          	addi	a5,a5,1
    80007cec:	00158593          	addi	a1,a1,1
    80007cf0:	fed78fa3          	sb	a3,-1(a5)
    80007cf4:	fee798e3          	bne	a5,a4,80007ce4 <__memmove+0x160>
    80007cf8:	f89ff06f          	j	80007c80 <__memmove+0xfc>

0000000080007cfc <__putc>:
    80007cfc:	fe010113          	addi	sp,sp,-32
    80007d00:	00813823          	sd	s0,16(sp)
    80007d04:	00113c23          	sd	ra,24(sp)
    80007d08:	02010413          	addi	s0,sp,32
    80007d0c:	00050793          	mv	a5,a0
    80007d10:	fef40593          	addi	a1,s0,-17
    80007d14:	00100613          	li	a2,1
    80007d18:	00000513          	li	a0,0
    80007d1c:	fef407a3          	sb	a5,-17(s0)
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	b3c080e7          	jalr	-1220(ra) # 8000685c <console_write>
    80007d28:	01813083          	ld	ra,24(sp)
    80007d2c:	01013403          	ld	s0,16(sp)
    80007d30:	02010113          	addi	sp,sp,32
    80007d34:	00008067          	ret

0000000080007d38 <__getc>:
    80007d38:	fe010113          	addi	sp,sp,-32
    80007d3c:	00813823          	sd	s0,16(sp)
    80007d40:	00113c23          	sd	ra,24(sp)
    80007d44:	02010413          	addi	s0,sp,32
    80007d48:	fe840593          	addi	a1,s0,-24
    80007d4c:	00100613          	li	a2,1
    80007d50:	00000513          	li	a0,0
    80007d54:	fffff097          	auipc	ra,0xfffff
    80007d58:	ae8080e7          	jalr	-1304(ra) # 8000683c <console_read>
    80007d5c:	fe844503          	lbu	a0,-24(s0)
    80007d60:	01813083          	ld	ra,24(sp)
    80007d64:	01013403          	ld	s0,16(sp)
    80007d68:	02010113          	addi	sp,sp,32
    80007d6c:	00008067          	ret

0000000080007d70 <console_handler>:
    80007d70:	fe010113          	addi	sp,sp,-32
    80007d74:	00813823          	sd	s0,16(sp)
    80007d78:	00113c23          	sd	ra,24(sp)
    80007d7c:	00913423          	sd	s1,8(sp)
    80007d80:	02010413          	addi	s0,sp,32
    80007d84:	14202773          	csrr	a4,scause
    80007d88:	100027f3          	csrr	a5,sstatus
    80007d8c:	0027f793          	andi	a5,a5,2
    80007d90:	06079e63          	bnez	a5,80007e0c <console_handler+0x9c>
    80007d94:	00074c63          	bltz	a4,80007dac <console_handler+0x3c>
    80007d98:	01813083          	ld	ra,24(sp)
    80007d9c:	01013403          	ld	s0,16(sp)
    80007da0:	00813483          	ld	s1,8(sp)
    80007da4:	02010113          	addi	sp,sp,32
    80007da8:	00008067          	ret
    80007dac:	0ff77713          	andi	a4,a4,255
    80007db0:	00900793          	li	a5,9
    80007db4:	fef712e3          	bne	a4,a5,80007d98 <console_handler+0x28>
    80007db8:	ffffe097          	auipc	ra,0xffffe
    80007dbc:	6dc080e7          	jalr	1756(ra) # 80006494 <plic_claim>
    80007dc0:	00a00793          	li	a5,10
    80007dc4:	00050493          	mv	s1,a0
    80007dc8:	02f50c63          	beq	a0,a5,80007e00 <console_handler+0x90>
    80007dcc:	fc0506e3          	beqz	a0,80007d98 <console_handler+0x28>
    80007dd0:	00050593          	mv	a1,a0
    80007dd4:	00000517          	auipc	a0,0x0
    80007dd8:	78450513          	addi	a0,a0,1924 # 80008558 <CONSOLE_STATUS+0x548>
    80007ddc:	fffff097          	auipc	ra,0xfffff
    80007de0:	afc080e7          	jalr	-1284(ra) # 800068d8 <__printf>
    80007de4:	01013403          	ld	s0,16(sp)
    80007de8:	01813083          	ld	ra,24(sp)
    80007dec:	00048513          	mv	a0,s1
    80007df0:	00813483          	ld	s1,8(sp)
    80007df4:	02010113          	addi	sp,sp,32
    80007df8:	ffffe317          	auipc	t1,0xffffe
    80007dfc:	6d430067          	jr	1748(t1) # 800064cc <plic_complete>
    80007e00:	fffff097          	auipc	ra,0xfffff
    80007e04:	3e0080e7          	jalr	992(ra) # 800071e0 <uartintr>
    80007e08:	fddff06f          	j	80007de4 <console_handler+0x74>
    80007e0c:	00001517          	auipc	a0,0x1
    80007e10:	84c50513          	addi	a0,a0,-1972 # 80008658 <digits+0x78>
    80007e14:	fffff097          	auipc	ra,0xfffff
    80007e18:	a68080e7          	jalr	-1432(ra) # 8000687c <panic>
	...
