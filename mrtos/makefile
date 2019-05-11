build: clean
	riscv-none-embed-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf
	riscv-none-embed-objcopy -O binary final.elf final.bin
	cp final.bin /home/fady/RTOS/Mini-Real-Time-Operating-System/final.bin
	cd .. && make
dump: clean
	riscv-none-embed-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf	
	riscv-none-embed-objcopy -O binary final.elf final.bin
	riscv-none-embed-objdump -d final.elf > code.asm

run: clean
	riscv-none-embed-gcc -march=rv32g -nostdlib -lgcc -Wl,--no-relax crt0.s main.cpp message.cpp OS.cpp EventControlBlock.cpp TaskControlBlock.cpp link.ld -o final.elf	
	riscv-none-embed-objcopy -O binary final.elf final.bin
	./rv32i_sim final.bin
clean:
	rm -rf final.bin final.elf
