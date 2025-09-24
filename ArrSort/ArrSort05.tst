// array size 0


load ArrSort.asm,
output-file ArrSort05.out,
compare-to ArrSort05.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;


// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0;
repeat 100{
    ticktock;
}
set RAM[1] 0,
set RAM[2] 0,
output;

// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 0;
repeat 100{
    ticktock;
}
set RAM[1] 10,
set RAM[2] 0,
output;

// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 6000,
set RAM[2] 0;
repeat 100{
    ticktock;
}
set RAM[1] 6000,
set RAM[2] 0,
output;