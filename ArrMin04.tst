// arry size 8 at pos 10

load ArrMin.asm,
output-file ArrMin04.out,
compare-to ArrMin04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[10]%D2.6.2 RAM[11]%D2.6.2 RAM[12]%D2.6.2 RAM[13]%D2.6.2 RAM[14]%D2.6.2 RAM[15]%D2.6.2 RAM[16]%D2.6.2 RAM[17]%D2.6.2;

//test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 1,
set RAM[11] 2,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 2,
set RAM[16] 2,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 1,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 2,
set RAM[16] 2,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 2,
set RAM[12] 1,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 2,
set RAM[16] 2,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 2,
set RAM[12] 2,
set RAM[13] 1,
set RAM[14] 2,
set RAM[15] 2,
set RAM[16] 2,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 2,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 1,
set RAM[15] 2,
set RAM[16] 2,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 2,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 1,
set RAM[16] 2,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 2,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 2,
set RAM[16] 1,
set RAM[17] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 2,
set RAM[11] 2,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 2,
set RAM[16] 2,
set RAM[17] 1;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] 0,
set RAM[11] 0,
set RAM[12] 0,
set RAM[13] 0,
set RAM[14] 0,
set RAM[15] 0,
set RAM[16] 0,
set RAM[17] 0;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

//test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 8,
set RAM[10] -12341,
set RAM[11] -12,
set RAM[12] 2,
set RAM[13] 312,
set RAM[14] -12341,
set RAM[15] -222,
set RAM[16] 11,
set RAM[17] 2344;
repeat 500 {
    ticktock;
}
set RAM[1] 10,
set RAM[2] 8,
output;

