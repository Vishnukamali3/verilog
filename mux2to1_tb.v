module tb;
  reg a,b,sel;
  wire y;
  mux2to1 u1(.a(a),.b(b),.sel(sel),.y(y));
  integer i;
  initial
    begin
      $monitor("time=%t,a=%b,b=%b,sel=%b,y=%b",$time,a,b,sel,y);
      for(i=0;i<8;i=i+1)
        begin
          {sel,a,b}=i[2:0];
          #10;
        end
      $finish;
    end
endmodule
          