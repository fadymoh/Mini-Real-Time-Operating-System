build: clean obj/MAIN_P obj/OS_P obj/TCB_P obj/ECB_P
	gcc obj/MAIN_P obj/OS_P obj/TCB_P obj/ECB_P -o exc



clean:
	touch obj/l
	rm obj/*

obj/MAIN_P:
	gcc -c main.cpp -o obj/MAIN_P


obj/OS_P:
	gcc -c OS.cpp -o obj/OS_P

obj/TCB_P:
	gcc -c TaskControlBlock.cpp -o obj/TCB_P

obj/ECB_P:
	gcc -c EventControlBlock.cpp -o obj/ECB_P

