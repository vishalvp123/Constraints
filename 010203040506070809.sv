// Pattern
// 0102030405
class test;
  
  rand int a[];
  
  constraint c1 { a.size inside {[10:100]} ;}
  
  constraint c3 { foreach(a[i]) if(i%2==0) a[i]==0; else if(i>1) a[i]==a[i-2]+1; else a[i]==1;} 
  
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
0 1 2 3 4 5 6 7 8 9 
0 1 0 2 0 3 0 4 0 5

*/