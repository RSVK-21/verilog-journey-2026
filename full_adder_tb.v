module tb;
  reg a,b,cin;
  wire sum, cout;
  full_adder dut(a,b,cin,sum,cout);
  initial begin
    $monitor("%b %b %b -> %b %b", a,b,cin,sum,cout);
    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;
  end
endmodule
