    .globl _main
_main:
    push %rbp
    mov %rsp,%rbp

    mov $1, %rcx
    mov 16(%rcx), %rax

    pop %rbp
    ret