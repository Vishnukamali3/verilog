module tb_FA;
  reg a,b,c;
  wire sum,carry;
  FA uut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
  integer i;
  initial
    begin
      $monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
      for(i=0;i<8;i=i+1)
        begin
          {a,b,c}=i;
          #10;
        end
      $finish;
    end
endmodule