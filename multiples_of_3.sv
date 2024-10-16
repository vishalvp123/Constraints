// Write a constraint to generate an array with unique values and muleples of 3
class test;
  
  rand bit [7:0] a[];
  
  constraint c1 { a.size inside {[40:100]} ;}
  								
  constraint c3 { foreach(a[i]) a[i]%3==0; } 
  
  constraint c4 {foreach (a[i]) a[i] != a[i-1] ;}

endclass

module m1;
  test t;
  
  initial begin
    t=new();
    
    t.randomize();
    $display("%p",t.a);
  end
endmodule
