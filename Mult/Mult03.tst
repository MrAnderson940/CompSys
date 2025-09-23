// with 0

load Mult.asm,
output-file Mult03.out,
compare-to Mult03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;


// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0;
repeat 200 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 0,
output;

// test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 1,
set RAM[2] 0;
repeat 200 {
    ticktock;
}
set RAM[1] 1,
set RAM[2] 0,
output;

// test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 2;
repeat 200 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 2,
output;

// test 4
set PC 0,
set RAM[0] 0,
set RAM[1] -9,
set RAM[2] 0;
repeat 200 {
    ticktock;
}
set RAM[1] -9,
set RAM[2] 0,
output;

// test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] -13;
repeat 250 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] -13,
output;

// test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 400,
set RAM[2] 0;
repeat 6000 {
    ticktock;
}
set RAM[1] 400,
set RAM[2] 0,
output;

// test 7
set PC 0,
set RAM[0] 0,
set RAM[1] -400,
set RAM[2] 0;
repeat 6000 {
    ticktock;
}
set RAM[1] -400,
set RAM[2] 0,
output;

// test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 400;
repeat 100 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 400,
output;

// test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] -400;
repeat 100 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] -400,
output;

// test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 10000,
set RAM[2] 0;
repeat 132000 {
    ticktock;
}
set RAM[1] 10000,
set RAM[2] 0,
output;

