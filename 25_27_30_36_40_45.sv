// Write a constraint to generate random values 25, 27, 30, 36, 40, 45 without using "set membership." 
 
class test;
  
  rand bit [7:0] a[];
  
  constraint c1 { a.size == 6 ;}
  
  constraint c5 { foreach (a[i]) {a[i] ==25 || a[i] == 27 || a[i] ==30 || a[i] == 36 || a[i] == 40 || a[i] == 45} ;}
  
  constraint c6 { foreach (a[i]) a[i+1] != a[i] && a[i+1] > a[i] ;}

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

/*
0  1  2  3  4  5
25 27 30 36 40 45
*/