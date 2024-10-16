// Pattern
// 1234554321
class test;
  
  rand bit [7:0] a[];
  
  constraint c1 { a.size ==10 ;}
  
  constraint c3 { foreach(a[i]) if(i<5) a[i]==i+1; else if(i==5) a[i]==i; else if(i>5) a[i]==a[i-1]-1;} 
  
endclass

module m1;
  test t;
  
  initial begin
    t=new();
    
    t.randomize();
    $display("%p",t.a);
  end
endmodule

/*
0 1 2 3 4 5 6 7 8 9 
1 2 3 4 5 5 4 3 2 1 

*/