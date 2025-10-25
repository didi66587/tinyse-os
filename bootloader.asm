org 0x7C00

start:
    mov [BOOT_DRIVE], dl

    mov ah, 0x0E
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10

    mov ah, 0x02
    mov al, 0x01
    mov ch, 0x00
    mov cl, 0x02
    mov dh, 0x00

    mov al, [BOOT_DRIVE]
    mov dl, al

    mov bx, 0x0000
    mov ax, 0x1000
    int 0x13
    jc disk_error

    mov ax, 0x1000
    mov ss, ax
    mov sp, 0xFFFF

    jmp 0x1000:0x0000

disk_error:
    mov ah, 0x0E
    mov al, 'E'
    int 0x10

hang:
   jmp hang

 BOOT_DRIVE db 0

times 510-($-$$) db 0
dw 0xAA55
