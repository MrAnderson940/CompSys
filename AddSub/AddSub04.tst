// testing all a and x postive, b negitive

load AddSub.vm,
output-file AddSub04.out,
compare-to AddSub04.cmp,
output-list sp%D1.6.1 local%D1.6.1 argument%D1.8.1 this%D1.6.1 that%D1.6.1
            RAM[16]%D1.6.1 RAM[17]%D1.6.1 RAM[18]%D1.6.1
            local[0]%D1.8.1 local[1]%D1.8.1 local[2]%D1.8.1
            argument[0]%D1.11.1 argument[1]%D1.11.1 argument[2]%D1.11.1;

set sp 256,
set local 300,
set argument 400,
set this 3000,
set that 3010,

set RAM[16] 5,
set RAM[17] 0,
set RAM[18] 0,

set local[0] 3,
set local[1] -8,
set local[3] 0,

set argument[0] 0,
set argument[1] 0,
set argument[2] 0;

repeat 25 {
    vmstep;
}
output;