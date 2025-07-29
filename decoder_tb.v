module decoder2to4_tb;
reg [1:0]a;
reg en;
wire [3:0]y;
decoder2to4 u1(.a(a),.en(en),.y(y));
integer i;
initial
  begin
    $monitor("time=%t,en=%b,a=%b,y=%b",$time,en,a,y);
    for(i=0;i<8;i=i+1)
      begin
        {en,a}=i[2:0];
        #10;
      end
    $finish;
  end
endmodule
        
