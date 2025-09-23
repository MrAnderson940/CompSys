//positive * positive test cases

load Mult.asm,
output-file Mult01.out,
compare-to Mult01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;


// test 1
set PC 0,
set RAM[0] 0,  
set RAM[1] 2,  
set RAM[2] 2;  
repeat 200 {
  ticktock;    
}
set RAM[1] 2,  
set RAM[2] 2,
output;

// test 2
set PC 0,
set RAM[0] 0,  
set RAM[1] 13,  
set RAM[2] 10;  
repeat 200 {
  ticktock;    
}
set RAM[1] 13,  
set RAM[2] 10,
output;

// test 3
set PC 0,
set RAM[0] 0,  
set RAM[1] 56,  
set RAM[2] 56;  
repeat 1000 {
  ticktock;    
}
set RAM[1] 56,  
set RAM[2] 56,
output;

// test 4
set PC 0,
set RAM[0] 0,  
set RAM[1] 24,  
set RAM[2] 2;  
repeat 500 {
  ticktock;    
}
set RAM[1] 24,  
set RAM[2] 2,
output;

// test 5
set PC 0,
set RAM[0] 0,  
set RAM[1] 1,  
set RAM[2] 15;  
repeat 200 {
  ticktock;    
}
set RAM[1] 1,  
set RAM[2] 15,
output;

// test 6
set PC 0,
set RAM[0] 0,  
set RAM[1] 222,  
set RAM[2] 2;  
repeat 3200 {
  ticktock;    
}
set RAM[1] 222,  
set RAM[2] 2,
output;

// test 7
set PC 0,
set RAM[0] 0,  
set RAM[1] 1,  
set RAM[2] 1;  
repeat 100 {
  ticktock;    
}
set RAM[1] 1,  
set RAM[2] 1,
output;

// test 8
set PC 0,
set RAM[0] 0,  
set RAM[1] 7,  
set RAM[2] 5;  
repeat 200 {
  ticktock;    
}
set RAM[1] 7,  
set RAM[2] 5,
output;

// test 9
set PC 0,
set RAM[0] 0,  
set RAM[1] 99,  
set RAM[2] 100;  
repeat 1800 {
  ticktock;    
}
set RAM[1] 99,  
set RAM[2] 100,
output;

// test 10
set PC 0,
set RAM[0] 0,  
set RAM[1] 3,  
set RAM[2] 3;  
repeat 100 {
  ticktock;    
}
set RAM[1] 3,  
set RAM[2] 3,
output;

