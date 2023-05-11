.data
N:
.word 3
M:
.word 4

matrix:
.word 1, 2, 3
.word 4, 5, 6
.word 7, 88, 9
.word 10, 11, 12

result:
.word 0
.word 0

.text

main:
lw a2, N
lw a3, M
la a4, matrix
la a5, result
call process
#la a2, M
#la a3, result
call print
call exit

print:
lw a1, 0(a5)
addi a0, x0, 1
ecall
lw a1, 4(a5)
addi a0, x0, 1
ecall

exit:
addi a0, x0, 10
ecall

process:

addi t4, x0, 0 # row pointer
addi t2, x0, 0  # temp var - max item

init:
addi t3, x0, 0 # row element number

cycle:
lw t6, 0(a4) # load value from array

blt t6, t2, cont    # max item check
sw t4, 0(a5) # save i to resulting array
sw t3, 4(a5) # save j to resulting array
addi t2, t6, 0   # new max item

cont:
addi a4, a4, 4 # increment array pointer
addi t3, t3, 1
blt t3, a2, cycle

addi t4, t4, 1
blt t4, a3, init
ret
