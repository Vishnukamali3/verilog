// Code your design here
module mux2to1(a,b,sel,y);
  input a,b,sel;
  output reg y;
  always@(*)
    begin
      case(sel)
        1'b0:y=a;
        1'b1:y=b;
        default:y=1'bx;
      endcase
    end
endmodule