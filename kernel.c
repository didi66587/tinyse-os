__attribute__((section(".multiboot")))
const unsigned int multiboot_header[] = {
    0x1BADB002, // magic
    0x0,        // flags
    -(0x1BADB002) // checksum
};

void kernel() {
    char *video = (char*)0xB8000;
    video[0] = 'A';
    video[1] = 0x07;
    unsigned char key;
    asm volatile("inb %1, %0" : "=a"(key) : "Nd" (0x60));
    while(1);
}