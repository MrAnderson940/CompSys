// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0
M=0
@3
M=0
@1
D=M
@15
D;JGE
@3
M=1
@1
D=M
D=D-M
D=D-M
M=D
@2
D=M
@26
D;JGE
@3
M=M+1
@2
D=M
D=D-M
D=D-M
M=D
@1
D=M
@40
D;JEQ
@1
M=M-1
@0
D=M
@2
D=M+D
@0
M=D
@26
0;JMP
@3
D=M-1
@48
D;JNE
@0
D=M
M=M-D
M=M-D
