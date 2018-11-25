module adder_5bit_11 (
input [4:0] in0,
input [4:0] in1,
input [4:0] in2,
input [4:0] in3,
input [4:0] in4,
input [4:0] in5,
input [4:0] in6,
input [4:0] in7,
input [4:0] in8,
input [4:0] in9,
input [4:0] in10,
output [4:0] out);
assign out[4:0] = in0[4:0] + in1[4:0] + in2[4:0] + in3[4:0] + in4[4:0] + in5[4:0] + in6[4:0] + in7[4:0] + in8[4:0] + in9[4:0] + in10[4:0];
endmodule
