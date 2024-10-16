// Write a constraint for sorting elements in a dynamic array using constraints.
class test;
  
  rand bit [15:0] a[];
  
  constraint c1 { a.size inside {[40:1000]} ;}
  
//   constraint c4 {foreach (a[i]) if(i>0) a[i] > a[i-1] ;} //Ascending order
  
  constraint c5 {foreach (a[i]) if(i>0) a[i] < a[i-1] ;} //Descending order


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
