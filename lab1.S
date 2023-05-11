.data
N:
.word 3
M:
.word 4

matrix:
.word -11, -22, -33
.word -44, -55, -66
.word -77, -8, -99
.word -10, -11, -12

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
lw t2, 0(a4) # # temp var - max item = first array item

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
