org 0x0000

start:
    ; print. yazdır. 
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
    ; ----------------------- input. girdi al.
    mov ah, 0x00
    int 0x16
    cmp al, 'T'
    je yaz
    cmp al, 27
    je bitir
    jmp start
    yaz:
      mov dx, offset tarayıcı
      mov ah, 4Bh
      mov al, 00h
      int 21h
      jmp start
   
   bitir:
       mov ah, 4Ch
       int 21h

tarayıcı db 'DOSLYNX.EXE',0
hang:
   jmp hang




