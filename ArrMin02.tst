// array size of 10 starting at 78

load ArrMin.asm,
output-file ArrMin02.out,
compare-to ArrMin02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[78]%D2.6.2 RAM[79]%D2.6.2 RAM[80]%D2.6.2 RAM[81]%D2.6.2 RAM[82]%D2.6.2 RAM[83]%D2.6.2 RAM[84]%D2.6.2 RAM[85]%D2.6.2 RAM[86]%D2.6.2 RAM[87]%D2.6.2;


//test 1
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 1,
set RAM[79] 2,
set RAM[80] 3,
set RAM[81] 4,
set RAM[82] 5,
set RAM[83] 6,
set RAM[84] 7,
set RAM[85] 8,
set RAM[86] 9,
set RAM[87] 10;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 2
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] -1,
set RAM[79] -1,
set RAM[80] -2,
set RAM[81] -3,
set RAM[82] -5,
set RAM[83] -8,
set RAM[84] 13,
set RAM[85] 12,
set RAM[86] 12,
set RAM[87] 13;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 3
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 413,
set RAM[79] 13134,
set RAM[80] 466,
set RAM[81] -13455,
set RAM[82] 4,
set RAM[83] -12,
set RAM[84] 23,
set RAM[85] 1,
set RAM[86] 1,
set RAM[87] 0;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 4
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 0,
set RAM[79] 0,
set RAM[80] 0,
set RAM[81] 0,
set RAM[82] 0,
set RAM[83] 0,
set RAM[84] 0,
set RAM[85] 0,
set RAM[86] 0,
set RAM[87] 0;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 5
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] -3,
set RAM[79] -55,
set RAM[80] -6,
set RAM[81] -12,
set RAM[82] -32,
set RAM[83] 11,
set RAM[84] -3,
set RAM[85] 66,
set RAM[86] 666,
set RAM[87] 666;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 6
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] -1,
set RAM[79] -2,
set RAM[80] -3,
set RAM[81] -4,
set RAM[82] -5,
set RAM[83] -6,
set RAM[84] -7,
set RAM[85] -8,
set RAM[86] -9,
set RAM[87] -10;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 7
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 4421,
set RAM[79] 5,
set RAM[80] 78,
set RAM[81] 566,
set RAM[82] -653,
set RAM[83] 0,
set RAM[84] -653,
set RAM[85] 5,
set RAM[86] 11,
set RAM[87] 33;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 8
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 234,
set RAM[79] 444,
set RAM[80] 234,
set RAM[81] 234,
set RAM[82] 234,
set RAM[83] 234,
set RAM[84] 234,
set RAM[85] 234,
set RAM[86] 234,
set RAM[87] 234;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 9
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 3,
set RAM[79] 6,
set RAM[80] 7,
set RAM[81] 3,
set RAM[82] 4,
set RAM[83] 3,
set RAM[84] 21,
set RAM[85] 6,
set RAM[86] 0,
set RAM[87] 3;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

//test 10
set PC 0,
set RAM[0]  0,
set RAM[1]  78,
set RAM[2]  10,
set RAM[78] 9999,
set RAM[79] 9999,
set RAM[80] 9999,
set RAM[81] 9999,
set RAM[82] 9999,
set RAM[83] 9999,
set RAM[84] 9999,
set RAM[85] 9999,
set RAM[86] 9999,
set RAM[87] 9999;
repeat 500 {
  ticktock;
}
set RAM[1] 78,
set RAM[2] 10,
output;

