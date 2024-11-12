// Write a constraint such that the sum of any three consecutive elements in an array is even.
class test;
  
  rand bit [15:0] a[];
  
  constraint c1 { a.size inside {[10:20]} ;}
  
  constraint c2 { foreach(a[i]) if(i<a.size-2) (a[i]+a[i+1]+a[i+2])%2==0 ;}
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
