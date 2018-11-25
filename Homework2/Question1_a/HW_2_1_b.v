module adder_3is2(
input a,
input b,
input cin,
output s,
output cout);
assign s = a ^ ( b ^ cin );
assign cout = (b & cin) | (a & cin) | (a & b);
endmodule
