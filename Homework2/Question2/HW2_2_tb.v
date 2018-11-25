module Top_testbench();
reg [7:0] multiplicand;
reg [7:0] multiplier;
wire [15:0] answer;
wire [15:0] answer_temp;
Top testbench_instantiation(multiplicand[7:0],multiplier[7:0],answer[15:0],answer_temp[15:0]);

initial begin
$monitor($time,"  %b x %b = %b\n",multiplicand[7:0],multiplier[7:0],answer[15:0]);
# 10;
// 0 x 0
multiplicand[7:0]= 8'b00000000;
multiplier[7:0]=8'b00000000;
# 40;
// 1 x max pos
multiplicand[7:0]= 8'b00000001;
multiplier[7:0]=8'b01111111;
# 50;
// 1 x max neg
multiplicand[7:0]= 8'b00000001;
multiplier[7:0]=8'b10000000;
# 50;
// max pos x 1
multiplicand[7:0]= 8'b01111111;
multiplier[7:0]=8'b00000001;
# 50;
// max neg x 1
multiplicand[7:0]= 8'b10000000;
multiplier[7:0]=8'b00000001;
# 50;
// max pos x max pos
multiplicand[7:0]= 8'b01111111;
multiplier[7:0]=8'b01111111;
# 50;
// max pos x max neg
multiplicand[7:0]= 8'b01111111;
multiplier[7:0]=8'b10000000;
# 50;
// max neg x max pos
multiplicand[7:0]= 8'b10000000;
multiplier[7:0]=8'b01111111;
# 50;
// max neg x max neg
multiplicand[7:0]= 8'b10000000;
multiplier[7:0]=8'b10000000;
# 50;
// Random 15 test cases
multiplicand[7:0]=8'b01010101;
multiplier[7:0]=8'b00000001;
# 50;
multiplicand[7:0]=8'b01010101;
multiplier[7:0]=8'b00000010;
# 50;
multiplicand[7:0]=8'b01010101;
multiplier[7:0]=8'b00000100;
# 50;
multiplicand[7:0]=8'b01010101;
multiplier[7:0]=8'b00001000;
# 50;
multiplicand[7:0]=8'b01010101;
multiplier[7:0]=8'b00010000;
# 50;
multiplicand[7:0]=8'b01010101;
multiplier[7:0]=8'b00100000;
# 50;
multiplicand[7:0]=8'b01110111;
multiplier[7:0]=8'b11000100;
# 50;
multiplicand[7:0]=8'b11110111;
multiplier[7:0]=8'b11000100;
# 50;
multiplicand[7:0]=8'b01111111;
multiplier[7:0]=8'b11000101;
# 50;
multiplicand[7:0]=8'b10000000;
multiplier[7:0]=8'b10000000;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b01000000;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b00100000;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b00010000;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b00001000;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b00000100;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b00000010;
# 50;
multiplicand[7:0]=8'b01000000;
multiplier[7:0]=8'b00000001;
# 50;

end
endmodule

