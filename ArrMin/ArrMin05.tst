// array size 12 and pos 666

load ArrMin.asm,
output-file ArrMin05.out,
compare-to ArrMin05.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[666]%D2.7.2 RAM[667]%D2.7.2 RAM[668]%D2.7.2 RAM[669]%D2.7.2 RAM[670]%D2.7.2 RAM[671]%D2.7.2 RAM[672]%D2.7.2 RAM[673]%D2.7.2 RAM[674]%D2.7.2 RAM[675]%D2.7.2 RAM[676]%D2.7.2 RAM[677]%D2.7.2;

//test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 1,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 1,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 1,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 1,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 1,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 1,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 1,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 1,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 1,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 1,
set RAM[676] 2,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 11
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 1,
set RAM[677] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 12
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 2,
set RAM[667] 2,
set RAM[668] 2,
set RAM[669] 2,
set RAM[670] 2,
set RAM[671] 2,
set RAM[672] 2,
set RAM[673] 2,
set RAM[674] 2,
set RAM[675] 2,
set RAM[676] 2,
set RAM[677] 1;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

//test 13
set PC 0,
set RAM[0] 0,
set RAM[1] 666,
set RAM[2] 12,
set RAM[666] 0,
set RAM[667] 0,
set RAM[668] 0,
set RAM[669] 0,
set RAM[670] 0,
set RAM[671] 0,
set RAM[672] 0,
set RAM[673] 0,
set RAM[674] 0,
set RAM[675] 0,
set RAM[676] 0,
set RAM[677] 0;
repeat 500 {
    ticktock;
}
set RAM[1] 666,
set RAM[2] 12,
output;

