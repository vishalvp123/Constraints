//AXI address
class test;
  
  rand bit [1:0] awsize;
  rand bit [31:0] wdata;
  rand bit [3:0] wstrobe;
  
  constraint c1 { awsize inside {[0:2]} ;}
  
  constraint c2 { if(awsize==0) $countones(wstrobe)==1; 
                 else if(awsize==1)  wstrobe inside {3,6,12};
                 else  $countones(wstrobe)==4;}
      
  constraint c3 {
    (wstrobe[0]==0) ->  (wdata[7:0]==0);
    (wstrobe[1]==0) ->  (wdata[15:8]==0);
    (wstrobe[2]==0) ->  (wdata[23:16]==0);
    (wstrobe[3]==0) ->  (wdata[31:24]==0);} 
        
  constraint c4 {solve wstrobe before wdata;} 
        
endclass

module m1;
  test t;
  
  initial begin
    t=new();
    repeat(50) begin
      t.randomize();
      $display("%0d\t%h\t%b",t.awsize,t.wdata,t.wstrobe);
    end
    
  end
endmodule
