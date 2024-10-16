// Pattern
// 9 19 29 39 49 59 69 79
class test;
  
  rand bit [15:0] a[];
  
  constraint c1 { a.size inside {[10:100]} ;}
  
  constraint c3 { foreach(a[i]) if(i==0) a[i]==9; else a[i]==a[i-1]+10;} 
  
endclass

module m1;
  test t;
  
  initial begin
    t=new();
    
    t.randomize();
    $display("%p",t.a);
    
    foreach(t.a[i])
      $display("a[%0d]=%0d",i,t.a[i]);        
              
  end
endmodule

/*
0 1  2  3  4  5  6  7 
9 19 29 39 49 59 69 79

*/