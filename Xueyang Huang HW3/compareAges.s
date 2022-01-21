    .globl _compareAges
_compareAges:
    push %rbp
    mov %rsp, %rbp
    mov $0, %rax    # default value of rax is set to 0
    mov 4(%rdi), %rcx   # store the age of the first argument object in rcx
    mov 4(%rsi), %rdx   # store the age of the second argument object in rdx
    cmp %rcx, %rdx
    je Equal            # if equal, jump to the Equal condition
    pop %rbp
    ret
Equal:
    inc %rax            # equal, then set rax to 1
    pop %rbp
    ret

