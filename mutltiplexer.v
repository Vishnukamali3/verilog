module mux2to1(b,se,out);
  input [1:0]b;
  input se;
  output reg  out;
  always@(*)
    begin
      case(se)
        1'b0:out=b[0];
        1'b1:out=b[1];
      endcase
    end
endmodule
module mux4to1(i,sel,y);
  input [3:0]i;
  input [1:0]sel;
  output reg y;
  always@(*)
    begin
      case(sel)
        2'b00:y=i[0];
        2'b01:y=i[1];
        2'b10:y=i[2];
        2'b11:y=i[3];
        default:y=2'bxx;
      endcase
    end
endmodule
module mux8to1(a,s,f);
  input [7:0]a;
  input [2:0]s;
  output f;
  wire [1:0]w;
  mux4to1 u1(a[3:0],s[1:0],w[0]);
  mux4to1 u2(a[7:4],s[1:0],w[1]);
  mux2to1 u3(w[1:0],s[2],f);
endmodule
  
  
  
      
    