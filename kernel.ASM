org 0x0000

BOOT_DRIVE db 0

start:
    cli
    mov ax, 0x1000
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0xFFFF

    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'I'
    int 0x10
    mov al, '.'
    int 0x10
    mov al, 'T'
    int 0x10
    mov al, 'A'
    int 0x10
    mov al, 'R'
    int 0x10
    mov al, 'A'
    int 0x10
    mov al, 'Y'
    int 0x10
    mov al, 'I'
    int 0x10
    mov al, 'C'
    int 0x10
    mov al, 'I'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'T'
    int 0x10
    ; -
    mov ah, 0x00
    int 0x16
    cmp al, 'T'
    je load_exe
    cmp al, 27
    je hang
    jmp start
    load_exe:
        mov ah, 0x02
        mov al, 0x01
        mov ch, 0
        mov cl, 3
        mov dh, 0
        mov dl, [BOOT_DRIVE]
        mov bx, 0x0000
        mov ax, 0x2000
        mov es, ax
        int 0x13
        jc start

        mov ax, 0x2000
        mov ds, ax
        mov bx, 0x0000
        mov ax, [bx+0x14]
        mov cx, [bx+0x16]
        add ax, 0x2000
        push cx
        push ax
        retf

hang:
   hlt
   jmp hang
