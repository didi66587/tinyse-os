org 0x7C00

start:
    mov [BOOT_DRIVE], dl

    mov ah, 0x0E
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10
    mov ax, 0x1000
    mov es, ax
    mov bx, 0
    mov cx, 4
.load_kernel:
    cmp cx, 0
    je run_kernel

    mov ah, 0x02
    mov al, 1
    mov ch, 0
    mov cl, bl
    add cl, 2
    mov dh, 0
    mov dl, [BOOT_DRIVE]
    int 0x13
    jc disk_error

    inc bx
    dec cx
    jmp .load_kernel

run_kernel:
    mov ax, 0x1000
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0xFFFF

    jmp 0x1000:0x0000

disk_error:
    mov ah, 0x0E
    mov al, 'E'
    int 0x10



hang:
   jmp hang

times 510-($-$$) db 0
dw 0xAA55
