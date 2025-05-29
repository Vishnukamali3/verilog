module tb_HS;
  reg a,b;
  wire diff,borrow;
  integer i;
  HS uut(.a(a), .b(b), .diff(diff), .borrow(borrow));
  initial
    begin
      for(i=0;i<4;i=i+1)
        begin
          {a,b}=i;
           #10;
           $display("a=%0b,b=%0b,diff=%0b,borrow=%0b",a,b,diff,borrow);
        end
      $finish;
    end
endmodule
    