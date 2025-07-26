module mux4to1(a,sel,y);
  input [3:0]a;
  input [1:0]sel;
  output reg y;
  always@(*)
    begin
      case(sel)
        2'b00 :y=a[0];
        2'b01 :y=a[1];
        2'b10 :y=a[2];
        2'b11 :y=a[3];
        default:y=2'bx;
      endcase
    end
endmodule
  