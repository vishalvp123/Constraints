// Write a constraint to generate the factorial of the first 5 even and odd numbers.
class test;
  
  rand int a_even[];
  rand int a_odd[];
  
  constraint c1 { a_even.size == 5 ; a_odd.size == 5;}
  
  constraint c2 { foreach (a_even[i]) a_even[i] == fact((i + 1) * 2); }

  constraint c3 { foreach (a_odd[i]) a_odd[i] == fact((i + 1) * 2); }
  
  function int fact(int j);
    if (j == 0)
      fact = 1;
    else
      fact = j * fact(j - 1);
  endfunction
  
endclass

module m1;
  test t;
  
  initial begin
    t=new();
    
    t.randomize();
    $display("a_even=%p \na_odd=%p",t.a_even,t.a_odd);
  end 
endmodule
