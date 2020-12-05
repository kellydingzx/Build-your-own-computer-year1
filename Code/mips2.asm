init:
add $t1,$0,$0	 #set t1 to sero,
add $t2,$0,1	 #calculate square number for t2
add $t3,$0,0     #Count how many we added
addi $t4,$0,100

loop:
add $t1,$t1,$t2	#increment t1 by t2
addi $t3,$t3,1  #increment the counter by 1
beq $t3,$t2,next #if the counter equals to the t2, then we goes to the next number
j loop

next:
#sw  $t1,0xFFFFFFF0 #display the calculated square number on to the display
beq $t2,$t4,reset #if we got to the largest number we need to calculate, then we go to 'reset'
add $t2,$t2,1	 #now t2 goes to the next square number which we need to calculate
add $t1,$0,$0    #set t1 back to 0
add $t3,$0,$0	 #set t3 back to 0
j loop

reset:
add $t1,$0,$0
add $t2,$0,0
add $t3,$0,0  
j loop
