// Write a code to generate a random number between 1.35 and 2.57.   
class test;
  rand int a1;
  shortreal a;
  
  constraint c1 { a1 inside {[1350:2570]};}
  
  function void post_randomize();
    a = a1/1000.0;
  endfunction
  
endclass

module m1;
  test t;
  
  initial begin
    t=new();
    repeat(10) begin
      t.randomize();
      $display("a1=%0d a=%2f",t.a1,t.a);
    end
  end
endmodule
