.text
sort_sub:
.globl sort_sub

li t1, 1 # i = 1

loop_i:
slli t3, t1, 2  # смещение по i ! t3 = i4
add t3, t3, a3  # адресс arr[i] ! t3 = указатель на arr[0] + смещение по i
lw a5, 0(t3)    # a5 = arr[i] ! item_to_insert
mv t3, zero     # t3 clk
addi t2, t1, -1 # j = i - 1 

loop_j:
bltz t2, loop_i_end # if(j < 0) -> loop_i_end 
slli t3, t2, 2 # смещение по j ! t3 = j4
add t3, t3, a3 # адресс arr[j] ! t3 = указатель на arr[0] + смещение по j
lw a6, 0(t3) # a6 = arr[j]
ble a6, a5, loop_i_end # if(arr[j] <= arr[i]) -> loop_i_end
addi t3, t3, 4 # в t3 был адресс на arr[j], стал arr[j+1]
sw a6, 0(t3) # arr[j+1] = arr[j]
addi t2, t2, -1 # j = j - 1
j loop_j

loop_i_end:
mv t3, zero # t3 clk
slli t3, t2, 2 # смещение по j ! t3 = j4
add t3, t3, a3 # адресс arr[j] ! t3 = указатель на arr[0] + смещение по j 
addi t3, t3, 4 # в t3 был адресс на arr[j], стал arr[j+1]
sw a5, 0(t3) # arr[j+1] = a5 ! arr[j+1] = item_to_insert
mv t3, zero # t3 clk
addi t1, t1, 1 # i = i + 1
bgt a4, t1, loop_i # if (arr_length > i) -> loop_i

loop_exit:
slli t3, a7, 2 # смещение по k ! t3 = k4
add t3, t3, a3 # адресс arr[k] ! t3 = указатель на arr[0] + смещение по k
addi t3, t3, -4 # уменьшили адресс на 1, т.к. к по порядковому номеру
lw a5, 0(t3) # a5 = arr[k]
ret