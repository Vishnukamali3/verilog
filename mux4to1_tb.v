module tb;
  reg [3:0]a;
  reg [1:0]sel;
  wire y;
  mux4to1 u1(.a(a),.sel(sel),.y(y));
  integer i;
  initial
    begin
      $monitor("time=%t,a=%b,sel=%b,y=%b",$time,a,sel,y);
      for(i=0;i<64;i=i+1)
        begin
          {sel,a}=i[5:0];
          #10;
        end
      $finish;
    end
endmodule
