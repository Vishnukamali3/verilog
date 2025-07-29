module decoder2to4(a,en,y);
  input wire [1:0]a;
  input wire en;
  output reg [3:0]y;
  always@(*)
    begin
      if(en)
        begin
          case(a)
            2'b00:y=4'b0001;
            2'b01:y=4'b0010;
            2'b10:y=4'b0100;
            2'b11:y=4'b1000;
          endcase  
        end
    end
endmodule
