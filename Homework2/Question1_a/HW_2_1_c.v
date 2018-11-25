module adder_3is2_type2 (
input [1:0] in,
input cin,
output [1:0] out);
assign out[1:0] = in[0] + in[1] + cin;
endmodule

