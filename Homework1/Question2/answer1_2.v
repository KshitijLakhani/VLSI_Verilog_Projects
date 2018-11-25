module carrysave_4is2 (
input [4:0] in,
output c0,
output c1,
output sum
);
wire connection;
FullAdder FA0 (in[0],in[1],in[2],connection,c0);
FullAdder FA1 (connection,in[4],in[3],sum,c1);
endmodule

module FullAdder(
input in1,
input in2,
input cin,
output sum,
output cout
);
assign sum = (in1 ^ in2) ^ cin;
assign cout = (in1 & in2) | (cin & (in1 ^ in2));
endmodule
