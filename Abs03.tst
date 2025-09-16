load Abs.asm,
output-file Abs03.out,
compare-to Abs03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;
// postives

//test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 1,
repeat 9{
    ticktock;
}
set RAM[1] 1,
output;

//test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 16000,
repeat 9{
    ticktock;
}
set RAM[1] 16000,
output;

//test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 28892,
repeat 9{
    ticktock;
}
set RAM[1] 28892,
output;

