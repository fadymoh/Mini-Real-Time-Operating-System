.section .text
    .global _start

    .org 0

_start:
   lui sp, %hi(_fstack)
   add sp, sp, %lo(_fstack)
   jal main

loop:
    addi x17, x0 ,10
    ECALL  
    j loop
    