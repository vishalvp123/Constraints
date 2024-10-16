// Pattern
// 5 -10 15 -20 25 -30
class test;
  
  rand int a[];
  
  constraint c1 { a.size inside {[10:100]} ;}
  
  constraint c3 { foreach(a[i]) if(i%2==0) a[i]==(5+(5*i)); else a[i]==-((i-1)*5+10);} 
  
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
0  1  2   3  4   5  
5 -10 15 -20 25 -30

*/