build: clean
	riscv32-unknown-linux-gnu-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf
	riscv32-unknown-linux-gnu-objcopy -O binary final.elf final.bin

dump: clean
	riscv32-unknown-linux-gnu-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf	
	riscv32-unknown-linux-gnu-objcopy -O binary final.elf final.bin
	riscv32-unknown-linux-gnu-objdump -d final.elf

run: clean
	riscv32-unknown-linux-gnu-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf	
	riscv32-unknown-linux-gnu-objcopy -O binary final.elf final.bin
	./rv32i_sim final.bin
clean:
	rm -rf final.bin final.elf
