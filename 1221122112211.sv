// Pattern
// 1221122112211
class test;
  
  rand bit [7:0] a[];
  
  constraint c1 { a.size inside {[40:100]} ;}
  
  //constraint c2 { foreach (a[i]) if($countones(i)%2==0) a[i]==1; else a[i]==2;}									
  constraint c3 { foreach(a[i]) if(i%4==0 || i%4==3) a[i]==1; else a[i]==2;} 
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

0011223 


0 1 2 3 4 5 6
0 0 1 1 2 2 3

0 1 2 3 4 5 6 7
0 1 0 1 0 1 0 1
1 0 1 0
0 0 1 1 0 0 1 1

if(i%2==0) a[i]==0; else a[i]==1;
if(i%2==0) a[i]==1; else a[i]==0;
if(i%4==0 || i%4==1) a[i]==0 else a[i]==1;
*/