// test array size 10 mix positive, zero, negitive

load,
output-file ArrMax04.out,
compare-to ArrMax04.cmp,
output-list sp%D1.6.1 local%D1.6.1 argument%D1.8.1 this%D1.6.1 that%D1.6.1
            RAM[16]%D1.6.1 RAM[17]%D1.6.1 RAM[18]%D1.6.1
            local[0]%D1.8.1 local[1]%D1.8.1 local[2]%D1.8.1
            argument[0]%D1.11.1 argument[1]%D1.11.1 argument[2]%D1.11.1;

set sp 256,
set local 300,
set argument 400,
set this 3000,
set that 3010,

set RAM[16] 0,
set RAM[17] 2788,
set RAM[18] 10,

set local[0] 0,
set local[1] 0,
set local[2] 0,

set argument[0] 0,
set argument[1] 0,
set argument[2] 0,

set RAM[2788] 5,
set RAM[2789] 122,
set RAM[2790] -9,
set RAM[2791] 0,
set RAM[2792] 0,
set RAM[2793] -888,
set RAM[2794] 243,
set RAM[2795] 2,
set RAM[2796] 3155,
set RAM[2797] -12;

repeat 500 {
    vmstep;
}
output;