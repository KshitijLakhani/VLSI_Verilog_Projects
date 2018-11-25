module adder_10bit (
input [9:0] i1,
input [9:0] i2,
output [10:0] out);
assign out[10:0] = i1[9:0] + i2[9:0];
endmodule
 
