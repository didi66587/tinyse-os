org 0x0000

start:
    ; print. yazdır. "Hİ"
    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'İ'
    int 0x10
    ; ----------------------- input. girdi al.
    mov ah, 0x00
    int 0x16
    mov ah, 0x0E
    int 0x10

hang:
   jmp hang


