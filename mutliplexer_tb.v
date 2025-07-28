module tb;
  reg [7:0]a;
  reg [2:0]s;
  wire f;
  mux8to1 u1(.a(a),.s(s),.f(f));
  integer i;
  initial
    begin
      $monitor("time=%t,a=%b,s=%b,f=%b",$time,a,s,f);
      for(i=0;i<256;i=i+1)
        begin
          {s,a}=i[10:0];
          #10;
        end
      $finish;
    end
endmodule