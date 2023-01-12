global _start
section .text
_start:
    mov eax, 1
    mov ebx, 0x01
    int 80h