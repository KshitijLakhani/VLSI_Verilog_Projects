module adder_10bit_tb ();
reg [9:0] in1;
reg [9:0] in2;
wire [10:0] out;
adder_10bit testbench_instantiate(in1[9:0], in2[9:0], out [10:0]);

initial begin
$monitor ($time,"in1 is %b, in2 is %b, out is %b",in1[9:0],in2[9:0],out[10:0]);
# 10;
in1[9:0] = 10'b0011001100;
in2[9:0] = 10'b1100110011;
#20;
in1[9:0] = 10'b1111001100;
in2[9:0] = 10'b1100110011;
#20;
in1[9:0] = 10'b0011001100;
in2[9:0] = 10'b1111001111;
#20;
in1[9:0] = 10'b0000001100;
in2[9:0] = 10'b1100110011;
#20;
end
endmodule
