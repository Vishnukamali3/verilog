module tb_HA;
  reg a,b;
  wire sum,carry;
  integer i;
  HA uut(.a(a), .b(b), .sum(sum), .carry(carry));
  initial
    begin
      for(i=0;i<4;i=i+1)
        begin
          {a,b}=i;
           #10;
          $display("a=%0b,b=%0b,sum=%0b,carry=%0b",a,b,sum,carry);
        end
      $finish;
    end
endmodule
    