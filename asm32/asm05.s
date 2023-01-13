global _start
section .data
    asm01: db './asm01', 0

section .text
_start:
    mov eax, 0x0b
    mov ebx, asm01
    int 80h
