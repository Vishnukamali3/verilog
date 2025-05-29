module HA(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum=a^b;
  assign carry=a&b;
endmodule
module FA(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  wire c1,c2,s;
  HA u1(a,b,s,c1);
  HA u2(s,c,sum,c2);
  assign carry=c1|c2;
endmodule