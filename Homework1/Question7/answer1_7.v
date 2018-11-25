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



module Top1 (
input [10:0] inp,
output cout,
output sum
);
wire [3:0] sum_word;
wire [3:0] carry_word;
wire cs1_c0;
wire cs1_c1;
wire cs1_s;
wire cs2_c0;
wire cs2_c1;
wire cs2_s;
stage1 instantiated(inp[10:0],sum_word[3:0],carry_word[3:0]);

carrysave_4is2 cs1 ({sum_word[3],carry_word[3],sum_word[2],carry_word[2]},cs1_c0,cs1_c1,cs1_s);
carrysave_4is2 cs2 ({sum_word[1],carry_word[1],sum_word[0],carry_word[0]},cs2_c0,cs2_c1,cs2_s);
carrysave_4is2 cs3 ({cs1_c1,cs1_s,cs2_c1,cs2_s},)

//assign addition[4:0] = {1'b0,sum_word[3:0]} + {carry_word[3:0],1'b0};
endmodule

module stage1 (
input [10:0] in,
output [3:0] sum,
output [3:0] cout
);

FullAdder FA0 (in[0],in[1],in[2],sum[0],cout[0]);
FullAdder FA1 (in[3],in[4],in[5],sum[1],cout[1]);
FullAdder FA2 (in[6],in[7],in[8],sum[2],cout[2]);




HalfAdder HA (in[9],in[10],sum[3],cout[3]);
endmodule

module HalfAdder(
input inp1,
input inp2,
output sum,
output cout
);
assign sum = inp1 ^ inp2;
assign cout = inp1 & inp2;
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
