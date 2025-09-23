// pos * neg test cases

load Mult.asm,
output-file Mult02.out,
compare-to Mult02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

// test 1
set PC 0,
set RAM[0] 0,
set RAM[1] 5,
set RAM[2] -12;
repeat 200 {
  ticktock;    
}
set RAM[1] 5,  
set RAM[2] -12,
output;

// test 2
set PC 0,
set RAM[0] 0,
set RAM[1] 2,
set RAM[2] -2;
repeat 100 {
  ticktock;    
}
set RAM[1] 2,  
set RAM[2] -2,
output;

// test 3
set PC 0,
set RAM[0] 0,
set RAM[1] 114,
set RAM[2] -10;
repeat 2000 {
  ticktock;    
}
set RAM[1] 114,  
set RAM[2] -10,
output;

// test 4
set PC 0,
set RAM[0] 0,
set RAM[1] 18,
set RAM[2] -98;
repeat 500 {
  ticktock;    
}
set RAM[1] 18,  
set RAM[2] -98,
output;

// test 5
set PC 0,
set RAM[0] 0,
set RAM[1] 4,
set RAM[2] -8;
repeat 200 {
  ticktock;    
}
set RAM[1] 4,  
set RAM[2] -8,
output;

// test 6
set PC 0,
set RAM[0] 0,
set RAM[1] 80,
set RAM[2] -100;
repeat 1200 {
  ticktock;    
}
set RAM[1] 80,  
set RAM[2] -100,
output;

// test 7
set PC 0,
set RAM[0] 0,
set RAM[1] 1,
set RAM[2] -1;
repeat 100 {
  ticktock;    
}
set RAM[1] 1,  
set RAM[2] -1,
output;

// test 8
set PC 0,
set RAM[0] 0,
set RAM[1] 333,
set RAM[2] -1;
repeat 5000 {
  ticktock;    
}
set RAM[1] 333,  
set RAM[2] -1,
output;

// test 9
set PC 0,
set RAM[0] 0,
set RAM[1] 1,
set RAM[2] -333;
repeat 200 {
  ticktock;    
}
set RAM[1] 1,  
set RAM[2] -333,
output;

// test 10
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] -10;
repeat 200 {
  ticktock;    
}
set RAM[1] 10,  
set RAM[2] -10,
output;