# program to display sequence of squares (1, 4, 9, 16, ...) till 10,000

init:
addi $t1, $0, 1 # set t1 to 1
addi $t2, $0, 100 # max number to display square of

loop:
beq $t1, $t2, reset # branch if reached the max num
add $t3, $0, $0 # set t3 to 0 (this will be the squared number)
add $t4, $0, $0 # set a counter (t4) to 0

addLoop: # iteratively add, to act as multiplication
add $t3, $t3, $t1 # add the number to square to t3
addi $t4, $t4, 1 # increment counter
bne $t4, $t1, addLoop # branch if counter has not reached the number to square

#sw $t3, 0xFFFFFFF0 # display the squared number on LED
addi $t1, $t1, 1 # increment t1 for the next loop
j loop

reset:
addi $t1, $0, 1 # set t1 back to 1
j loop # jump back