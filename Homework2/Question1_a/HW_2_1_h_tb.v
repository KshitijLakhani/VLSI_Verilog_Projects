module multiplier_16bit_tb();
reg [15:0] in1;
reg [15:0] in2;
wire [31:0] out;
multiplier_16bit testbench_instantiation(in1[15:0],in2[15:0],out[31:0]);

initial begin
$monitor($time,"in1=%b \t in2=%b \t out=%b \n",in1[15:0],in2[15:0],out[31:0]);
# 10;
in1[15:0]=16'h0001;
in2[15:0]=16'h1010;
# 10;
in1[15:0]=16'h0002;
in2[15:0]=16'h0802;
# 10;
in1[15:0]=16'hFFFF;
in2[15:0]=16'hFFFF;
# 10;
end
endmodule
