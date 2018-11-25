module complexmulttrial(
input [15:0] a_r,
input [15:0] a_i,
input [15:0] b_r,
input [15:0] b_i,
input [15:0] w_r,
input [15:0] w_i,
output [15:0] x_r,
output [15:0] x_i,
output [15:0] y_r,
output [15:0] y_i);

wire [32:0] temp_r;
wire [32:0] temp_i;

assign x_r = a_r + b_r;
assign x_i = a_i + b_i;
assign temp_r = ((a_r - b_r)*(w_r) - (a_i - b_i)*(w_i));
assign temp_i = ((a_i - b_i)*(w_r) + (a_r - b_r)*(w_i));
assign y_r[15:0] = temp_r[32:18];
assign y_i[15:0] = temp_i[32:18];



endmodule
