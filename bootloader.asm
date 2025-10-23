org 0x7C00

start:
    mov ah, 0x0E
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10
    jmp 0x1000:0x0000

hang:
   jmp hang

times 510-($-$$) db 0
dw 0xAA55