class A;
  rand int a[] ;
  constraint C1 {a.size() == 10;}
  constraint C2 {foreach(a[i]) a[i] inside {[1:20]};}
  constraint C3 { foreach(a[i])
                  {   
                    if(i% 2 == 0)
                      a[i]% 2 != 0;
                    else
                      a[i]% 2 == 0;
                  }   
                }   
  endclass
  
module test;     
    A a1;
    initial begin 
      a1 = new();
      begin
        assert(a1.randomize());
        foreach(a1.a[i])
          $display(" a [%0d] = %0d",i,a1.a[i]);
      end
    end 
endmodule

-------------------------------------------------------------------------------------
                 V C S   S i m u l a t i o n   R e p o r t
-------------------------------------------------------------------------------------

 a [0] = 9
 a [1] = 18
 a [2] = 3
 a [3] = 18
 a [4] = 15
 a [5] = 2
 a [6] = 5
 a [7] = 20
 a [8] = 3
 a [9] = 14 
-------------------------------------------------------------------------------------
