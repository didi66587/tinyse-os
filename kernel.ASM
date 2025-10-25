org 0x0000

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
    mov al, '.'
    int 0x10
    mov al, 'T'
    int 0x10
    ; -
    mov ah, 0x00
    int 0x16
    cmp al, 'T'
    je yaz
    cmp al, 27
    je bitir
    jmp start
    yaz:
      mov ds, ax
      mov ah, 0x4B
      mov al, 0x00
      mov dx, filename
      int 0x21
      jmp start
    bitir:
        jmp hang
    hang:
       hlt
       jmp hang
    filename db 'DOSLYNX.EXE',0


