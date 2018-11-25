module multiplier_8bit_tb();
reg [7:0] in1;
reg [7:0] in2;
wire [15:0] out;
multiplier_8bit testbench_instantiation(in1[7:0],in2[7:0],out[15:0]);

initial begin
$monitor($time,"in1=%b \t in2=%b \t out=%b \n",in1[7:0],in2[7:0],out[15:0]);
# 10;
in1[7:0]=8'b00000001;
in2[7:0]=8'b10101010;
# 10;
in1[7:0]=8'b00000101;
in2[7:0]=8'b00101010;
# 10;
in1[7:0]=8'b00000111;
in2[7:0]=8'b00000111;
# 10;
in1[7:0]=8'b11111111;
in2[7:0]=8'b00000010;
# 10;
end
endmodule
