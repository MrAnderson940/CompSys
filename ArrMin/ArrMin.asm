// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.





@2
D=M
@end
D;JEQ
@1
D=M
A=D
D=M
@0
M=D
@1
M=M+1
@2
M=M-1
D=M
@33
D;JEQ
@1
D=M
A=D
D=M
@0
D=D-M
@31
D;JGT
@1
D=M
A=D
D=M
@0
M=D
@10
0;JMP