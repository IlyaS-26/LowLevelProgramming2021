.text
setup:
.globl setup
call sort_main
finish:
li a0, 10
ecall