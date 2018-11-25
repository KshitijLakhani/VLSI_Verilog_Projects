module multiplier_8bit(
input [7:0] in1,
input [7:0] in2,
output [15:0] out);
assign out = in1 * in2;
endmodule
