module HS(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  assign diff=a^b;
  assign borrow=~a&b;
endmodule
module HA(a,b,sum,carry);
  input a,b;
  output sum,carry;
  wire w1,s1;
  assign w1=~a;
  HS u1(w1,b,s1,carry);
  assign sum=~s1;
endmodule
  