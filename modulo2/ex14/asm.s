.section .data
    .equ CONST, 2
base:
    .int 2
    
height:
    .int 2
    
.global base, height


.section .text
    .global getArea

getArea:
    movl base(%rip), %eax
    movl height(%rip), %ecx
    mull %ecx
    movl $CONST, %ecx
    divl %ecx
    ret

