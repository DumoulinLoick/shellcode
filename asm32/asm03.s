global _start

segment .data 
    nb: db "1337", 10

section .bss
    buf: resb 4

section .text
_start:
    mov eax, 3 ; lire l'entrée
    mov ebx, 0 ; 
    mov ecx, buf ; destination
    mov edx, 3 ; longueur de la chaine 
    int 80h

    ; comparaison
    mov al, [buf]
    cmp al, '4'
    jne error
    
    mov al, [buf+1]
    cmp al, '2'
    jne error
    
    mov al, [buf+2]
    cmp al, 10
    jne error

print:
    mov eax, 4
    mov ebx, 1
    mov ecx, nb
    mov edx, 5
    int 80h

end:
    mov eax, 1
    mov ebx, 0
    int 80h
    
error:
    mov eax, 1
    mov ebx, 1
    int 80h
    