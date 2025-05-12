.global _main
.align 2

_main:
    stp x29, x30, [sp, #-16]!
    stp x20, x21, [sp, #-16]!
    stp x22, x23, [sp, #-16]!
    
    sub sp, sp, #1001
    
    mov x0, #0
    mov x1, sp
    mov x2, #1000
    mov x16, #3
    svc #0
    
    cmp x0, #0
    ble not_pangram
    
    add x1, sp, x0
    strb wzr, [x1]
    
    mov x20, #0
    mov x21, sp

process_char:
    ldrb w22, [x21], #1
    cbz w22, check_pangram
    sub w22, w22, #'a'
    cmp w22, #25
    bhi process_char
    mov x23, #1
    lsl x23, x23, x22
    orr x20, x20, x23
    b process_char

check_pangram:
    mov x23, #0x03FFFFFF
    and x0, x20, x23
    cmp x0, x23
    bne not_pangram
    adr x1, true_str
    mov x2, #5
    b print_result

not_pangram:
    adr x1, false_str
    mov x2, #6

print_result:
    mov x0, #1
    mov x16, #4
    svc #0
    mov x0, #0

exit:
    add sp, sp, #1001
    ldp x22, x23, [sp], #16
    ldp x20, x21, [sp], #16
    ldp x29, x30, [sp], #16
    mov x16, #1
    svc #0

true_str:   .asciz "true\n"
false_str:  .asciz "false\n"
