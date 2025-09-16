load AddSub.asm,
output-file AddSub01.out,
compare-to AddSub01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2;

// test 1
set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] 100,  // Set R1
set RAM[2] 60,  // Set R2
set RAM[3] 4;  // Set R3
repeat 8 {
  ticktock;    // Run for 100 clock cycles
}
set RAM[1] 100,  // Restore arguments in case program used them
set RAM[2] 60,
set RAM[3] 4,
output;     

// test 2
set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] -1,  // Set R1
set RAM[2] -1,  // Set R2
set RAM[3] -2;  // Set R3
repeat 8 {
  ticktock;    // Run for 100 clock cycles
}
set RAM[1] -1,  // Restore arguments in case program used them
set RAM[2] -1,
set RAM[3] -2,
output;

// test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 2020,
set RAM[2] 6000,
set RAM[3] 19,
repeat 8 {
    ticktock;
}
set RAM[1] 2020,
set RAM[2] 6000,
set RAM[3] 19,
output;

// test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 213,
set RAM[2] 16383,
set RAM[3] 16383,
repeat 8 {
    ticktock;
}
set RAM[1] 213,
set RAM[2] 16383,
set RAM[3] 16383,
output;

// test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 0,
repeat 8 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 0,
output;

// test 6 
set PC 0,
set RAM[0] 0,
set RAM[1] -16383,
set RAM[2] -12,
set RAM[3] 90,
repeat 8 {
    ticktock;
}
set RAM[1] -16383,
set RAM[2] -12,
set RAM[3] 90,
output;

// test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 10000,
set RAM[2] 10000,
set RAM[3] 10000,
repeat 8 {
    ticktock;
}
set RAM[1] 10000,
set RAM[2] 10000,
set RAM[3] 10000,
output;

// test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 5132,
repeat 8 {
    ticktock;
}
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 5132,
output;

// test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 88,
set RAM[2] 0,
set RAM[3] 88,
repeat 8 {
    ticktock;
}
set RAM[1] 88,
set RAM[2] 0,
set RAM[3] 88,
output;

// test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 99,
set RAM[2] 99,
set RAM[3] 0,
repeat 8 {
    ticktock;
}
set RAM[1] 99,
set RAM[2] 99,
set RAM[3] 0,
output;