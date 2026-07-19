COMPILE=vasmm68k_mot -Felf -m68000 -o
LINK=m68k-linux-gnu-ld -Bstatic -o
default: build run

build:
	 @$ ${COMPILE} hello.o hello.asm
	 @$ ${LINK} hello hello.o

run:
	#---------------------------------- 
	@$ qemu-m68k ./hello

clean:
	rm -rf hello.o hello
