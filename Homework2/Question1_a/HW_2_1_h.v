module multiplier_16bit(
input [15:0] in1,
input [15:0] in2,
output [31:0] out);
assign out = in1 * in2;
endmodule
