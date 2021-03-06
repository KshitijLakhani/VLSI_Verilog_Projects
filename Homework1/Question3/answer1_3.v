module stage1_3is2 (
input [5:0] in1,
input [5:0] in2,
input [5:0] in3,
output [5:0] cout_stage1,
output [5:0] sum_stage1
);
FullAdder FA2 (in1[0],in2[0],in3[0],sum_stage1[0],cout_stage1[0]);
FullAdder FA3 (in1[1],in2[1],in3[1],sum_stage1[1],cout_stage1[1]);
FullAdder FA4 (in1[2],in2[2],in3[2],sum_stage1[2],cout_stage1[2]);
FullAdder FA5 (in1[3],in2[3],in3[3],sum_stage1[3],cout_stage1[3]);
FullAdder FA12 (in1[4],in2[4],in3[4],sum_stage1[4],cout_stage1[4]);
FullAdder FA13 (in1[5],in2[5],in3[5],sum_stage1[5],cout_stage1[5]);
endmodule

module stage2_3is2 (
input [5:0] in4,
input [5:0] in5,
input [5:0] in6,
output [5:0] cout_stage2,
output [5:0] sum_stage2
);
FullAdder FA6 (in4[0],in5[0],in6[0],sum_stage2[0],cout_stage2[0]);
FullAdder FA7 (in4[1],in5[1],in6[1],sum_stage2[1],cout_stage2[1]);
FullAdder FA8 (in4[2],in5[2],in6[2],sum_stage2[2],cout_stage2[2]);
FullAdder FA9 (in4[3],in5[3],in6[3],sum_stage2[3],cout_stage2[3]);
FullAdder FA22 (in4[4],in5[4],in6[4],sum_stage2[4],cout_stage2[4]);
FullAdder FA23 (in4[5],in5[5],in6[5],sum_stage2[5],cout_stage2[5]);
endmodule

module stage3_4is2 (
input [5:0] subin1,
input [5:0] subin2,
input [5:0] subin3,
input [5:0] subin4,
output [5:0] sum_stage3,
output [5:0] cout_stage3
//output carry
);
wire connection1,connection2,connection3,connection4,connection5;
carrysave_4is2 CS1(({1'b0,1'b0,subin3[0],1'b0,subin1[0]}),connection1,cout_stage3[0],sum_stage3[0]);
carrysave_4is2 CS2(({connection1,subin4[0],subin3[1],subin2[0],subin1[1]}),connection2,cout_stage3[1],sum_stage3[1]);
carrysave_4is2 CS3(({connection2,subin4[1],subin3[2],subin2[1],subin1[2]}),connection3,cout_stage3[2],sum_stage3[2]);
carrysave_4is2 CS4(({connection3,subin4[2],subin3[3],subin2[2],subin1[3]}),connection4,cout_stage3[3],sum_stage3[3]);
carrysave_4is2 CS5(({connection4,subin4[3],subin3[4],subin2[3],subin1[4]}),connection5,cout_stage3[4],sum_stage3[4]);
carrysave_4is2 CS6(({connection5,subin4[4],subin3[5],subin2[4],subin1[5]}), , ,sum_stage3[5]);
endmodule

module Top (
input [3:0] i1,
input [3:0] i2,
input [3:0] i3,
input [3:0] i4,
input [3:0] i5,
input [3:0] i6,
output [5:0] answer
);
wire [5:0] cout_S1;
wire [5:0] sum_S1;
wire [5:0] cout_S2;
wire [5:0] sum_S2;
wire [5:0] sum_S3;
wire [5:0] cout_S3;
//wire carry_S3;
stage1_3is2 S1 ( {i1[3],i1[3],i1[3:0]} , {i2[3],i2[3],i2[3:0]} , {i3[3],i3[3],i3[3:0]} , cout_S1[5:0] , sum_S1[5:0]);
stage2_3is2 S2 ( {i4[3],i4[3],i4[3:0]} , {i5[3],i5[3],i5[3:0]} , {i6[3],i6[3],i6[3:0]} , cout_S2[5:0] , sum_S2[5:0]);
stage3_4is2 S3 (sum_S1[5:0],({cout_S1[4:0],1'b0}),sum_S2[5:0],({cout_S2[4:0],1'b0}),sum_S3[5:0],cout_S3[5:0]/*,carry_S3*/);
assign answer [5:0] = (sum_S3[5:0]) + ({cout_S3[4:0],1'b0}); 
endmodule

module carrysave_4is2 (
input [4:0] in,
output c0,
output c1,
output sum
);
wire connection;
FullAdder FA0 (in[0],in[1],in[2],connection,c0);
FullAdder FA1 (connection,in[4],in[3],sum,c1);
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
