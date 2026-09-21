module tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  rca_4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

  initial begin
    $monitor("a=%d b=%d cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
    a=4; b=3; cin=0; #10; // 4+3=7
    a=15; b=1; cin=0; #10; // 15+1=16 -> sum 0 cout 1
    a=7; b=7; cin=1; #10; // 7+7+1=15
    a=1; b=5; cin=0; #10; // 1+5=6
  end
endmodule
