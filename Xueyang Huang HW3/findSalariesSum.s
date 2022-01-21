    .globl _findSalariesSum
_findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    # cstmr------> rdi 
    # num--->  rsi
    # sum ---> rax
    # index -----> rcx
    mov $0, %rax  
    mov $0, %rcx
    imul $3, %rsi       # the size of an struct item is 12, if we need to loop through every item in the array, we will need 12 as the iteration count
Cal:
    cmp %rsi, %rcx
    je Done
    add 8(%rdi, %rcx, 4), %rax  # pointing to each struct item in the array, move by 8 bytes to get the salary, sum them in rax
    add $3, %rcx    # the iterator should be multiples of 3 now, if we need to skip everything inside the struct and point directly to the next item 
    jmp Cal
Done:
    pop %rbp
    ret