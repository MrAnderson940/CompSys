// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.





@0
M=0

(array_loop)
@2
D=M
@finish
D;JEQ

@1
D=M
@ptr
M=D

@1
A=M
D=M
@0
M=D

(min_loop)
@1
M=M+1
@2
M=M-1
D=M

@min_exit
D;JEQ

@1
A=M
D=M
@0
D=D-M
@min_loop
D;JGT

@1
A=M
D=M
@ptr
A=M
M=D
@0
D=M
@1
A=M
M=D
@ptr
A=M
D=M
@0
M=D

@min_loop
0;JMP

(min_exit)
@1
D=M
@ptr
D=D-M
@2
M=D-1
@ptr
D=M
@1
M=D+1

@array_loop
0;JMP

(finish)
@0
M=-1