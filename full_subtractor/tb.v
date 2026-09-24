module tb;
  reg a,b,bin;
  wire diff, bout;
  full_sub dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
  initial begin
    $monitor("a=%b b=%b bin=%b | diff=%b bout=%b", a,b,bin,diff,bout);
    a=0; b=0; bin=0; #10;
    a=0; b=0; bin=1; #10;
    a=0; b=1; bin=0; #10;
    a=0; b=1; bin=1; #10;
    a=1; b=0; bin=0; #10;
    a=1; b=0; bin=1; #10;
    a=1; b=1; bin=0; #10;
    a=1; b=1; bin=1; #10;
  end
endmodule
