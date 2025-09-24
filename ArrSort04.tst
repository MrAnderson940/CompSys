// array size 20 pos 666

load ArrSort.asm,
output-file ArrSort04.out,
compare-to ArrSort04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[666]%D2.6.2 RAM[667]%D2.6.2 RAM[668]%D2.6.2 RAM[669]%D2.6.2 RAM[676]%D2.6.2 RAM[677]%D2.6.2 RAM[678]%D2.6.2 RAM[679]%D2.6.2 RAM[680]%D2.6.2 RAM[681]%D2.6.2 RAM[682]%D2.6.2 RAM[683]%D2.6.2 RAM[684]%D2.6.2 RAM[685]%D2.6.2;


//test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 20,
set RAM[667] 19,
set RAM[668] 18,
set RAM[669] 17,
set RAM[670] 16,
set RAM[671] 15,
set RAM[672] 14,
set RAM[673] 13,
set RAM[674] 12,
set RAM[675] 11,
set RAM[676] 10,
set RAM[677] 9,
set RAM[678] 8,
set RAM[679] 7,
set RAM[680] 6,
set RAM[681] 5,
set RAM[682] 4,
set RAM[683] 3,
set RAM[684] 2,
set RAM[685] 1;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 1,
set RAM[667] 2,
set RAM[668] 3,
set RAM[669] 4,
set RAM[670] 5,
set RAM[671] 6,
set RAM[672] 7,
set RAM[673] 8,
set RAM[674] 9,
set RAM[675] 10,
set RAM[676] 11,
set RAM[677] 12,
set RAM[678] 13,
set RAM[679] 14,
set RAM[680] 15,
set RAM[681] 16,
set RAM[682] 17,
set RAM[683] 18,
set RAM[684] 19,
set RAM[685] 20;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] -1,
set RAM[667] -2,
set RAM[668] -3,
set RAM[669] -4,
set RAM[670] -5,
set RAM[671] -6,
set RAM[672] -7,
set RAM[673] -8,
set RAM[674] -9,
set RAM[675] -10,
set RAM[676] -11,
set RAM[677] -12,
set RAM[678] -13,
set RAM[679] -14,
set RAM[680] -15,
set RAM[681] -16,
set RAM[682] -17,
set RAM[683] -18,
set RAM[684] -19,
set RAM[685] -20;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] -5,
set RAM[667] -5,
set RAM[668] -5,
set RAM[669] -5,
set RAM[670] 0,
set RAM[671] -12,
set RAM[672] -1,
set RAM[673] 5,
set RAM[674] 5,
set RAM[675] 5,
set RAM[676] 5,
set RAM[677] -9,
set RAM[678] -9,
set RAM[679] -9,
set RAM[680] -9,
set RAM[681] 2,
set RAM[682] 2,
set RAM[683] 2,
set RAM[684] 2,
set RAM[685] 2;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 1,
set RAM[667] -1,
set RAM[668] 2,
set RAM[669] -2,
set RAM[670] -3,
set RAM[671] 3,
set RAM[672] 4,
set RAM[673] -4,
set RAM[674] 5,
set RAM[675] -5,
set RAM[676] 6,
set RAM[677] -6,
set RAM[678] 7,
set RAM[679] -7,
set RAM[680] 8,
set RAM[681] -8,
set RAM[682] 9,
set RAM[683] -9,
set RAM[684] 10,
set RAM[685] -10;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 1000,
set RAM[667] -1000,
set RAM[668] 2000,
set RAM[669] -2000,
set RAM[670] 3000,
set RAM[671] -3000,
set RAM[672] 4000,
set RAM[673] -4000,
set RAM[674] 5000,
set RAM[675] -5000,
set RAM[676] 6000,
set RAM[677] -6000,
set RAM[678] 7000,
set RAM[679] -7000,
set RAM[680] 8000,
set RAM[681] -8000,
set RAM[682] 9000,
set RAM[683] -9000,
set RAM[684] 10000,
set RAM[685] -10000;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 143,
set RAM[667] 5,
set RAM[668] 0,
set RAM[669] 13256,
set RAM[670] -34,
set RAM[671] -314,
set RAM[672] 455,
set RAM[673] 5555,
set RAM[674] 57,
set RAM[675] 0,
set RAM[676] -415,
set RAM[677] 555,
set RAM[678] -55,
set RAM[679] -346,
set RAM[680] 66,
set RAM[681] -7,
set RAM[682] -9,
set RAM[683] 0,
set RAM[684] 111,
set RAM[685] 10000;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 90,
set RAM[667] 85,
set RAM[668] 43,
set RAM[669] -24,
set RAM[670] -52,
set RAM[671] -1234,
set RAM[672] -5,
set RAM[673] 31,
set RAM[674] 6,
set RAM[675] 145,
set RAM[676] 3145,
set RAM[677] 31,
set RAM[678] 4555,
set RAM[679] 6,
set RAM[680] -131,
set RAM[681] -4133,
set RAM[682] -10034,
set RAM[683] 4333,
set RAM[684] 456,
set RAM[685] -900;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] -10000,
set RAM[667] -10000,
set RAM[668] -10000,
set RAM[669] -10000,
set RAM[670] -10000,
set RAM[671] -10000,
set RAM[672] -10000,
set RAM[673] -10000,
set RAM[674] -10000,
set RAM[675] -10000,
set RAM[676] -10000,
set RAM[677] -10000,
set RAM[678] -10000,
set RAM[679] -10000,
set RAM[680] -10000,
set RAM[681] -10000,
set RAM[682] -10000,
set RAM[683] -10000,
set RAM[684] -10000,
set RAM[685] -10000;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

//test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 20,
set RAM[666] 10000,
set RAM[667] 10000,
set RAM[668] 10000,
set RAM[669] 10000,
set RAM[670] 10000,
set RAM[671] 10000,
set RAM[672] 10000,
set RAM[673] 10000,
set RAM[674] 10000,
set RAM[675] 10000,
set RAM[676] 10000,
set RAM[677] 10000,
set RAM[678] 10000,
set RAM[679] 10000,
set RAM[680] 10000,
set RAM[681] 10000,
set RAM[682] 10000,
set RAM[683] 10000,
set RAM[684] 10000,
set RAM[685] 10000;
repeat 7000 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 20,
output;

