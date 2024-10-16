// Write a constraint to generate a random even number between 50 and 100. 
class test;
  
  rand bit [7:0] a[];
  
  constraint c1 { a.size inside {[10:15]} ;}
  
  constraint c4 {foreach (a[i]) a[i] % 2 ==0 ;} 
  constraint c5 {foreach (a[i]) a[i] inside {[50:100]};}

endclass

module m1;
  test t;
  
  initial begin
    t=new();
    
    t.randomize();
    $display("%p",t.a);
    foreach (t.a[i])
      $display("%0d",t.a[i]);
  end
endmodule
