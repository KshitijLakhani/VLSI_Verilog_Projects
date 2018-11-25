module Top (
input [4:0] a,
input [4:0] b,
input [4:0] c,
output [8:0] addition
);
wire [8:0] sum;
wire [7:0] cout;
carrysave_3is2stage instantiated (a[4:0],b[4:0],c[4:0],sum[8:0],cout[7:0]);
assign addition[8:0] = sum[8:0] + ({cout[7:0],1'b0});
endmodule


module carrysave_3is2stage (
input [4:0] inp1,
input [4:0] inp2,
input [4:0] inp3,
output [8:0] sump,
output [7:0] coutp
);
wire [8:0] inp1_9bit;
wire [8:0] inp2_9bit;
wire [8:0] inp3_9bit;
assign inp1_9bit [8:0] = {inp1[4],inp1[4],inp1[4],inp1[4],inp1[4:0]};
assign inp2_9bit [8:0] = {inp2[4],inp2[4],inp2[4:0],1'b0,1'b0};
assign inp3_9bit [8:0] = {1'b0,inp3[4:0],1'b0,1'b0,1'b0};
FullAdder FA0 (inp1_9bit[0],inp2_9bit[0],inp3_9bit[0],sump[0],coutp[0]);
FullAdder FA1 (inp1_9bit[1],inp2_9bit[1],inp3_9bit[1],sump[1],coutp[1]);
FullAdder FA2 (inp1_9bit[2],inp2_9bit[2],inp3_9bit[2],sump[2],coutp[2]);
FullAdder FA3 (inp1_9bit[3],inp2_9bit[3],inp3_9bit[3],sump[3],coutp[3]);
FullAdder FA4 (inp1_9bit[4],inp2_9bit[4],inp3_9bit[4],sump[4],coutp[4]);
FullAdder FA5 (inp1_9bit[5],inp2_9bit[5],inp3_9bit[5],sump[5],coutp[5]);
FullAdder FA6 (inp1_9bit[6],inp2_9bit[6],inp3_9bit[6],sump[6],coutp[6]);
FullAdder FA7 (inp1_9bit[7],inp2_9bit[7],inp3_9bit[7],sump[7],coutp[7]);
FullAdder FA8 (inp1_9bit[8],inp2_9bit[8],inp3_9bit[8],sump[8], );
endmodule


module FullAdder(
input in1,
input in2,
input cin,
output sum,
output cout
);
assign sum = (in1 ^ in2) ^ cin;
assign cout = (in1 & in2) | (cin & (in1 ^ in2));
endmodule
