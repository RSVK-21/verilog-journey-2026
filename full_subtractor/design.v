module half_sub(input a,b, output diff, borrow);
  assign diff = a ^ b;
  assign borrow = ~a & b;
endmodule

module full_sub(input a,b,bin, output diff, bout);
  wire d1, b1, b2;
  half_sub hs1(.a(a),.b(b),.diff(d1),.borrow(b1));
  half_sub hs2(.a(d1),.b(bin),.diff(diff),.borrow(b2));
  assign bout = b1 | b2;
endmodule
