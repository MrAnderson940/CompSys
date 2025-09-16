load Abs.asm,
output-file Abs02.out,
compare-to Abs02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;
// zero

//test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
repeat 9{
    ticktock;
}
set RAM[1] 0,
output;

