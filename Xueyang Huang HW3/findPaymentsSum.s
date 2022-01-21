    .globl _findPaymentsSum
_findPaymentsSum:
    push %rbp
    mov %rsp, %rbp
    
    # cstmr------> rdi 
    # num--->  rsi
    # sum ---> rax
    # index -----> rcx
    mov $0, %rax
    mov $0, %rcx
Cal:
    cmp %rsi, %rcx
    je Done
    add 8(%rdi, %rcx, 4),%rax   # move %rdi forward by 8 bytes, and store what is in the payments at this index to %rax
    inc %rcx
    jmp Cal
Done:
    pop %rbp
    ret