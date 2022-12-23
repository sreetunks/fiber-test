.code
get_context PROC
    ; Regular Registers
    mov r8, [rsp]
    mov [rcx + 8*0], r8
    lea r8, [rsp + 8]
    mov [rcx + 8*1], r8
    mov [rcx + 8*2], rbx
    mov [rcx + 8*3], rbp
    mov [rcx + 8*4], r12
    mov [rcx + 8*5], r13
    mov [rcx + 8*6], r14
    mov [rcx + 8*7], r15
    mov [rcx + 8*8], rdi
    mov [rcx + 8*9], rsi
    ; XMM Registers
    movups [rcx + 8*10], xmm6
    movups [rcx + 8*12], xmm7
    movups [rcx + 8*14], xmm8
    movups [rcx + 8*16], xmm9
    movups [rcx + 8*18], xmm10
    movups [rcx + 8*20], xmm11
    movups [rcx + 8*22], xmm12
    movups [rcx + 8*24], xmm13
    movups [rcx + 8*26], xmm14
    movups [rcx + 8*28], xmm15
    ; Return
    xor rax, rax
    ret
get_context ENDP
set_context PROC
    ; Regular Registers
    mov r8,  [rcx + 8*0]
    mov rsp, [rcx + 8*1]
    mov rbx, [rcx + 8*2]
    mov rbp, [rcx + 8*3]
    mov r12, [rcx + 8*4]
    mov r13, [rcx + 8*5]
    mov r14, [rcx + 8*6]
    mov r15, [rcx + 8*7]
    mov rdi, [rcx + 8*8]
    mov rsi, [rcx + 8*9]
    ; XMM Registers
    movups [rcx + 8*10], xmm6
    movups [rcx + 8*12], xmm7
    movups [rcx + 8*14], xmm8
    movups [rcx + 8*16], xmm9
    movups [rcx + 8*18], xmm10
    movups [rcx + 8*20], xmm11
    movups [rcx + 8*22], xmm12
    movups [rcx + 8*24], xmm13
    movups [rcx + 8*26], xmm14
    movups [rcx + 8*28], xmm15
    ; Push Instruction Pointer to stack
    push r8
    ; Return
    xor rax, rax
    ret
set_context ENDP
END