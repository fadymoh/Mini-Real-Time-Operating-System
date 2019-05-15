# PaidRTOS
A real time operating system based on MicroC/OS-II The Real-Time Kernel.
Built using Riscv Instruction Set Architecture
## Installation
You have to have a cross compiler for Riscv32, and attached with the code is a simulator for Riscv32 which supports interrupts
and all the required functionalities.
[Cross-Compiler]( https://gnu-mcu-eclipse.github.io/toolchain/riscv/)

You are free to use any other compiler, just change the command in the makefile.
You also have to have python3 for the scheduling graph plot.
## Compilation
```bash
  cd mrtos
  vi makefile
```
change the path in the "cp" command to the preceding directory and exit
```bash
  make
```

Feel free to email any issues to be looked upon. :)
