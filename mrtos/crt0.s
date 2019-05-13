.section .text
    .global _start
    .global OSTCBCur
    .global OSTCBHighRdy
    .org 0

_start:
   lui sp, %hi(_fstack)
   add sp, sp, %lo(_fstack)
   jal main

loop:
    addi x17, x0 ,10
    ECALL  
    j loop

_OS_CTX_SW:
    addi sp, sp, -48
    sw x8, 44(sp) 
    sw x9, 40(sp) 
    sw x18, 36(sp) 
    sw x19, 32(sp) 
    sw x20, 28(sp) 
    sw x21, 24(sp) 
    sw x22, 20(sp) 
    sw x23, 16(sp) 
    sw x24, 12(sp) 
    sw x25, 8(sp) 
    sw x26, 4(sp) 
    sw x27, 0(sp)
    

    lui x15, %hi(OSTCBCur)
    lw x15, %lo(OSTCBCur)(x15)
    sw x2, 0(x15)


    lui x15, %hi(OSTCBHighRdy) 
    lw x14, %lo(OSTCBHighRdy)(x15)
    lui x15, %hi(OSTCBCur) 
    sw	x14,%lo(OSTCBCur)(x15)

    lui x15, %hi(OSTCBCur)
    lw x15, %lo(OSTCBCur)(x15)
    lw	x2,0(x15)
    

    lw x8, 44(sp)  
    lw x9, 40(sp)  
    lw x18, 36(sp)  
    lw x19, 32(sp)  
    lw x20, 28(sp)  
    lw x21, 24(sp)  
    lw x22, 20(sp)  
    lw x23, 16(sp)  
    lw x24, 12(sp)  
    lw x25, 8(sp)  
    lw x26, 4(sp)  
    lw x27, 0(sp)  
    addi sp, sp, 48  

    li	a7,13 # IRET
    ecall


        