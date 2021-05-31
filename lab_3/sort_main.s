.text
sort_main:
.globl sort_main
la a3, arr # указатель на 0й элем массива !load adress -> загружает адресс
lw a4, arr_length # счетчик !load word -> загружает значение
lw a7, k # a7 = k

addi sp, sp, -16 #делаем для того чтобы не было зацикливания и сохраняем
sw ra, 12(sp) # загружаем в память
call sort_sub
lw ra, 12(sp) 
addi sp, sp, 16 # возвращаем все обратно ! для рекурсии?
ret # return

.rodata
arr_length:
.word 6
k:
.word 3
.data
arr:
.word 108, 53, 45, 27, 67, 90