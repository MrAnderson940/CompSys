load AddSub.asm,
output-file AddSub02.out,
compare-to AddSub02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2;

// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 1,
set RAM[2] 2,
set RAM[3] 3,
repeat 8 {
    ticktock;
}
set RAM[1] 1,
set RAM[2] 2,
set RAM[3] 3,
output;

// test 2
set PC 0,
set RAM[0] 0,
set RAM[1] -1,
set RAM[2] -2,
set RAM[3] -3,
repeat 8 {
    ticktock;
}
set RAM[1] -1,
set RAM[2] -2,
set RAM[3] -3,
output;

// test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 888,
set RAM[2] 0,
set RAM[3] 0,
repeat 8 {
    ticktock;
}
set RAM[1] 888,
set RAM[2] 0,
set RAM[3] 0,
output;

// test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 789,
set RAM[3] 0,
repeat 8 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 789,
set RAM[3] 0,
output;

// test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 4009,
repeat 8 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 4009,
output;

// test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 9876,
set RAM[3] 9876,
repeat 8 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 9876,
set RAM[3] 9876,
output;

// test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 3976,
set RAM[2] 0,
set RAM[3] 3976,
repeat 8 {
    ticktock;
}
set RAM[1] 3976,
set RAM[2] 0,
set RAM[3] 3976,
output;

// test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 12,
set RAM[2] 12,
set RAM[3] 24,
repeat 8 {
    ticktock;
}
set RAM[1] 12,
set RAM[2] 12,
set RAM[3] 24,
output;

// test 9
set PC 0,
set RAM[0] 0,
set RAM[1] -12,
set RAM[2] -12,
set RAM[3] -24,
repeat 8 {
    ticktock;
}
set RAM[1] -12,
set RAM[2] -12,
set RAM[3] -24,
output;

// test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 700,
set RAM[2] 10000,
set RAM[3] 0,
repeat 8 {
    ticktock;
}
set RAM[1] 700,
set RAM[2] 10000,
set RAM[3] 0,
output;