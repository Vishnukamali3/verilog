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
module mux4to1(a,sel,y);
  input [3:0]a;
  input [1:0]sel;
  output y;
  wire w1,w2;
  mux2to1 u1(a[0],a[1],sel[0],w1);
  mux2to1 u2(a[2],a[3],sel[0],w2);
  mux2to1 u3(w1,w2,sel[1],y);
endmodule