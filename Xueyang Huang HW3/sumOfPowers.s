    .globl _sumOfPowers
_sumOfPowers:
    push %rbp
    mov %rsp, %rbp
    # n------> rdi 
    # sum ---> rax
    # i -----> rcx
    # temp --> rsi
    mov $0, %rax # sum
    mov $0, %rcx # index
Top:
    cmp %rdi, %rcx  # compare the index and n
    jg Done         # if rcx is greater than rdi then jump out of loop
    mov %rcx, %rsi  # store what is in rcx into the temp register rsi
    imul %rsi, %rsi # multiply rsi by itself to get the square
    add %rsi, %rax  # put what is in rsi now into rax
    inc %rcx        # add index by 1
    jmp Top
Done:
    pop %rbp
    ret


# int sum = 0
# for(int i=0; i<=size;i++){
#    sum+= i*i;
# }