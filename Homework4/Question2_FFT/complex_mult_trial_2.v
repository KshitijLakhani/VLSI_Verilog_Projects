module complexmulttrial2(
input [15:0] a_r,
input [15:0] a_i,
input [15:0] b_r,
input [15:0] b_i,
input [15:0] w_r,
input [15:0] w_i,
output [15:0] x_r,
output [15:0] x_i,
output [15:0] y_r,
output [15:0] y_i,
output [32:0] temp_r,
output [32:0] temp_i);


wire [32:0] temp_r_r;
wire [32:0] temp_i_i;

assign x_r = a_r + b_r;
assign x_i = a_i + b_i;
assign temp_r_r=a_r-b_r;
assign temp_i_i=a_i-b_i;
assign temp_r=(temp_r_r)*(w_r) - (temp_i_i)*(w_i);
assign temp_i=(temp_i_i)*(w_r) - (temp_r_r)*(w_i);

/*always @ (*) begin
if(temp_r[32:11]>16'b0111111111111111)begin
assign y_r = 16'b0111111111111111;
end
else if (temp_r[32:11]<16'b1000000000000000)begin
assign y_r = 16'b1000000000000000;
end
else begin
assign y_r = 
end
end*/


assign y_r[15:0] = temp_r[32:17];
assign y_i[15:0] = temp_i[32:17];



endmodule
