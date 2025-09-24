// arry size 4 pos 72

load ArrSort.asm,
output-file ArrSort01.out,
compare-to ArrSort01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[72]%D2.6.2 RAM[73]%D2.6.2 RAM[74]%D2.6.2 RAM[75]%D2.6.2;


// Test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 4,
set RAM[73] 3,
set RAM[74] 2,
set RAM[75] 1;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 1433,
set RAM[73] 46,
set RAM[74] 6322,
set RAM[75] 6;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] -9,
set RAM[73] -13,
set RAM[74] -4,
set RAM[75] -666;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 0,
set RAM[73] 9,
set RAM[74] 8,
set RAM[75] 34;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 2,
set RAM[73] 2,
set RAM[74] 2,
set RAM[75] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 2,
set RAM[73] 1,
set RAM[74] 2,
set RAM[75] 2;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 9,
set RAM[73] 0,
set RAM[74] 0,
set RAM[75] -2;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 8,
set RAM[73] 35,
set RAM[74] -6,
set RAM[75] 53;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 7563,
set RAM[73] 3567,
set RAM[74] 1354,
set RAM[75] -1345;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

// Test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 72,
set RAM[2] 4,
set RAM[72] 1435,
set RAM[73] 6523,
set RAM[74] 7393,
set RAM[75] 2225;
repeat 500 {
    ticktock;
}
set RAM[1] 72,
set RAM[2] 4,
output;

