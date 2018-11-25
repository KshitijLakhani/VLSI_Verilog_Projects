module bitwiseAND_10bit_tb();
reg [9:0] in1;
reg [9:0] in2;
wire [9:0] out;
bitwiseAND_10bit testbench_instantiate(in1[9:0],in2[9:0],out[9:0]);

initial begin
$monitor($time,"in1=%b \t in2=%b \t out=%b \n",in1[9:0],in2[9:0],out[9:0]);
# 10;
in1[9:0] = 10'b0000000000;
in2[9:0] = 10'b1111111111;
#20;
in1[9:0] = 10'b1000000000;
in2[9:0] = 10'b1111111111;
#20;
in1[9:0] = 10'b0011000000;
in2[9:0] = 10'b0011111100;
#20;
end
endmodule
