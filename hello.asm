section .data
    msg db 'Hello World!', 0xA
    tam equ $- msg

section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80


    mov EAX, 0X1
    mov EBX, 0X0
    int 0x80
