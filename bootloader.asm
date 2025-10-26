org 0x7C00


start:
    cli
    cld
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7C00

    mov [BOOT_DRIVE], dl


    mov ah, 0x0E
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10

    xor si, si
    mov bx, 0x1000
    mov es, ax


xor bl, bl
.load_kernel:
    cmp si, 4
    je run_kernel

    mov ah, 0x02
    mov al, 1
    mov ch, 0
    mov dh, 0
    mov cl, 2
    add cl, bl

    mov dl, [BOOT_DRIVE]
    int 0x13
    jc disk_error

    add bx, 512
    inc si
    jmp .load_kernel

run_kernel:
    cli
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
    jmp $

BOOT_DRIVE: db 0

times 510-($-$$) db 0
dw 0xAA55
