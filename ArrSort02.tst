// arry size 1 at pos 502

load ArrSort.asm,
output-file ArrSort02.out,
compare-to ArrSort02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[502]%D2.6.2;

// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] 0;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] 9999;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] -8;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] -1234;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] 666;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] 346;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] -344;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] 100;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] 7887;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;

// test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 502,
set RAM[2] 1,
set RAM[502] -10000;
repeat 300 {
    ticktock;
}
set RAM[1] 502,
set RAM[2] 1,
output;