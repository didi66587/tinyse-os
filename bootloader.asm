org 0x7C00

start:
    mov ah, 0x0E
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10
    cli
    mov ax, 0x1000
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0xFFFF

    jmp 0x1000:0x0000

hang:
   jmp hang

times 510-($-$$) db 0
dw 0xAA55
