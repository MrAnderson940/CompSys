// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.





@0
M=0
@2
D=M
@end
D;JLE
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
@end
D;JEQ
@1
D=M
A=D
D=M
@42
D;JLE
@0
D=M
@42
D;JGE
@1
A=D
D=M
@0
D=D-M
@42
D;JGT
@1
D=M
A=D
D=M
@0
M=D
@12
0;JMP