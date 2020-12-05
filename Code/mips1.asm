#Fibonacci Sequence
#starting from the third item, its value equals to the sum of the privious two items
init:
add $t1,$0,$0	#set $t1 to zero
addi $t2,$0,1	#set $t2 to 1
addi $t3,$0,10946 #set $t3 to 100

loop:
sw $t1,0xFFFFFFF0	#display the number at register t1 to driver display
sw $t2,0xFFFFFFF0 	#display the number at register t2 to driver display
beq $t1,$t3,reset	#if $t1 is equal to $t3, then branch to the reset
beq $t2,$t3,reset	#also, if $t2 is equal to $t3, then branch to the reset
add $t1,$t1,$t2		#add $t1 and $t2 so we get the next Fibonacci number
add $t2,$t1,$t2		#add $t1 and $t2 so we get the next Fibonacci number
j loop

reset:
add $t1,$0,$0	#reset both t1 and t2
add $t2,$0,1
j loop
