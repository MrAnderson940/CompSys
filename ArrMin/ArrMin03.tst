// arry size 1 located at 5244

load ArrMin.asm,
output-file ArrMin03.out,
compare-to ArrMin03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[5244]%D2.9.2;

//test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 0;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 10000;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 213;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] -2922;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] -22;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 1;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 39;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] -10000;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 8;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

//test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 5244,
set RAM[2] 1,
set RAM[5244] 12344;
repeat 200 {
    ticktock;
}
set RAM[1] 5244,
set RAM[2] 1,
output;

