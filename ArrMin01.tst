// array size 4, from R12

load ArrMin.asm,
output-file ArrMin01.out,
compare-to ArrMin01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[12]%D2.6.2 RAM[13]%D2.6.2 RAM[14]%D2.6.2 RAM[15]%D2.6.2;


//test 1
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 1,
set RAM[13] 2,
set RAM[14] 3,
set RAM[15] 4;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 2
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 2,
set RAM[13] 2,
set RAM[14] 2,
set RAM[15] 2;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 3
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] -1,
set RAM[13] -2,
set RAM[14] -3,
set RAM[15] -4;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 4
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 0,
set RAM[13] 1,
set RAM[14] 2,
set RAM[15] 3;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 5
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 0,
set RAM[13] -1,
set RAM[14] -2,
set RAM[15] -3;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 6
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] -1,
set RAM[13] -2,
set RAM[14] 1,
set RAM[15] 2;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 7
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 432,
set RAM[13] 555,
set RAM[14] 344,
set RAM[15] 21;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 8
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] -213,
set RAM[13] 333,
set RAM[14] 2111,
set RAM[15] -3124;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 9
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 0,
set RAM[13] -321,
set RAM[14] 0,
set RAM[15] 1233;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

//test 10
set PC 0,
set RAM[0]  0,
set RAM[1]  12,
set RAM[2]  4,
set RAM[12] 0,
set RAM[13] 0,
set RAM[14] 0,
set RAM[15] 0;
repeat 300 {
  ticktock;
}
set RAM[1] 12,
set RAM[2] 4,
output;

