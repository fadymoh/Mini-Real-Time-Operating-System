build: clean
	g++ main.cpp -o exc && ./exc >> finalAssembly.asm
clean:
	rm -rf exc prints.txt finalAssembly.asm
