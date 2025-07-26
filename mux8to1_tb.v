module tb;
  reg [7:0]a;
  reg [2:0]sel;
  wire y;
  mux8to1 u1(.a(a),.sel(sel),.y(y));
  integer i;
  initial
    begin
      $monitor("time=%t,a=%b,sel=%b,y=%b",$time,a,sel,y);
      for(i=0;i<256;i=i+1)
        begin
          {sel,a}=i[10:0];
          #10;
        end
      $finish;
    end
endmodule
