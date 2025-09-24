// arry size 10 pos 100

load ArrSort.asm,
output-file ArrSort03.out,
compare-to ArrSort03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[100]%D2.6.2 RAM[101]%D2.6.2 RAM[102]%D2.6.2 RAM[103]%D2.6.2 RAM[104]%D2.6.2 RAM[105]%D2.6.2 RAM[106]%D2.6.2 RAM[107]%D2.6.2 RAM[108]%D2.6.2 RAM[109]%D2.6.2;


// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 10,
set RAM[101] 9,
set RAM[102] 8,
set RAM[103] 7,
set RAM[104] 6,
set RAM[105] 5,
set RAM[106] 4,
set RAM[107] 3,
set RAM[108] 2,
set RAM[109] 1;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 1,
set RAM[101] 2,
set RAM[102] 3,
set RAM[103] 4,
set RAM[104] 5,
set RAM[105] 6,
set RAM[106] 7,
set RAM[107] 8,
set RAM[108] 9,
set RAM[109] 10;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] -1,
set RAM[101] -2,
set RAM[102] -3,
set RAM[103] -4,
set RAM[104] -5,
set RAM[105] -6,
set RAM[106] -7,
set RAM[107] -8,
set RAM[108] -9,
set RAM[109] -10;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] -5,
set RAM[101] -5,
set RAM[102] -5,
set RAM[103] -1,
set RAM[104] -5,
set RAM[105] -5,
set RAM[106] -5,
set RAM[107] 0,
set RAM[108] -12,
set RAM[109] 6;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 1,
set RAM[101] -1,
set RAM[102] 2,
set RAM[103] -2,
set RAM[104] 3,
set RAM[105] -3,
set RAM[106] -4,
set RAM[107] 4,
set RAM[108] 5,
set RAM[109] -5;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] -500,
set RAM[101] 500,
set RAM[102] -600,
set RAM[103] 600,
set RAM[104] -700,
set RAM[105] 700,
set RAM[106] -800,
set RAM[107] 800,
set RAM[108] 900,
set RAM[109] -900;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 5123,
set RAM[101] 312,
set RAM[102] -32,
set RAM[103] 5,
set RAM[104] -123,
set RAM[105] 0,
set RAM[106] -53,
set RAM[107] 0,
set RAM[108] 111,
set RAM[109] -1532;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 90,
set RAM[101] 2149,
set RAM[102] 42,
set RAM[103] 124,
set RAM[104] -124,
set RAM[105] 53,
set RAM[106] -12,
set RAM[107] 34,
set RAM[108] 12435,
set RAM[109] -2144;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 10,
set RAM[101] 10,
set RAM[102] 10,
set RAM[103] 10,
set RAM[104] 10,
set RAM[105] 10,
set RAM[106] 10,
set RAM[107] 10,
set RAM[108] 10,
set RAM[109] 10;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

// test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 100,
set RAM[2] 10,
set RAM[100] 10000,
set RAM[101] 10000,
set RAM[102] 10000,
set RAM[103] 10000,
set RAM[104] 10000,
set RAM[105] 10000,
set RAM[106] 10000,
set RAM[107] 10000,
set RAM[108] 10000,
set RAM[109] 10000;
repeat 2000 {
    ticktock;
}
set RAM[1] 100,
set RAM[2] 10,
output;

