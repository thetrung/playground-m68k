
  section text

  xdef    _start

_start:
    ; Write syscall (Linux m68k sys_write = 4)
    move.l  #4,d0           ; syscall number 4
    move.l  #1,d1           ; file descriptor 1 (stdout)
    move.l  #msg,d2         ; pointer to message
    move.l  #len,d3         ; message length
    trap    #0              ; call linux kernel

    ; Exit syscall (Linux m68k sys_exit = 1)
    move.l  #1,d0           ; syscall number 1
    move.l  #0,d1           ; exit code 0
    trap    #0              ; call linux kernel

  section rodata

msg: 
  dc.b    "Hello, 68k World!",10

len: equ     *-msg       ; '*' means current address in vasm
