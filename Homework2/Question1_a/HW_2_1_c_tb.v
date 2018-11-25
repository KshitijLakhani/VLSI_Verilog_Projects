module adder_3is2_type2_tb();
reg [1:0] in;
reg cin;
wire [1:0] out; 
adder_3is2_type2 testbench_instantiate(in[1:0],cin,out[1:0]);

initial begin
$monitor($time,"in1 = %b \t in2 = %b \t cin = %b \t sum = %b \t cout = %b \n",in[1],in[0],cin,out[0],out[1]);
# 10;
in[1:0] = 2'b00;
cin = 1'b0;
# 10;
in[1:0] = 2'b01;
cin = 1'b1;
# 10;
in[1:0] = 2'b11;
cin = 1'b1;
# 10;
in[1:0] = 2'b10;
cin = 1'b1;
end
endmodule
