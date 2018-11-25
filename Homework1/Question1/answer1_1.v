module TopLevel (ain[4:0],bin[4:0],cin[4:0],extendeda[7:0],extendedb[7:0],extendedcin[7:0],sumf[8:0],coutf[8:0],carrysaveoutput[8:0]);
input [4:0] ain;
input [4:0] bin;
input [4:0] cin;
output [8:0] carrysaveoutput;
output [7:0] extendeda;
output [7:0] extendedb;
output [7:0] extendedcin;
output [8:0] sumf;
output [8:0] coutf;
/*reg [7:0] shifteda;
reg [7:0] shiftedb;
reg [7:0] shiftedcin;*/
assign extendeda[7:0] = {{3{ain[4]}}, ain[4:0]};
assign extendedb[7:0] = {{{3{bin[4]}}, bin[4:0]} << 2};
assign extendedcin[7:0] = {{{3{cin[4]}}, cin[4:0]} << 3};
carrysave_8 instantiate (extendeda[7:0],extendedb[7:0],extendedcin[7:0],sumf[8:0],coutf[8:0],carrysaveoutput[8:0]);
endmodule

module carrysave_8 (a[7:0],b[7:0],c[7:0],sum[8:0],cout[8:0],addition[8:0]);
input [7:0] a;
input [7:0] b;
input [7:0] c;
output [8:0] sum;
output [8:0] cout;
output [8:0] addition;
FA FA0(a[0],b[0],c[0],sum[0],cout[0]);
FA FA1(a[1],b[1],c[1],sum[1],cout[1]);
FA FA2(a[2],b[2],c[2],sum[2],cout[2]);
FA FA3(a[3],b[3],c[3],sum[3],cout[3]);
FA FA4(a[4],b[4],c[4],sum[4],cout[4]);
FA FA5(a[5],b[5],c[5],sum[5],cout[5]);
FA FA6(a[6],b[6],c[6],sum[6],cout[6]);
FA FA7(a[7],b[7],c[7],sum[7],cout[7]);
assign sum[8]=1'b0;
assign cout[8]=1'b0;
assign addition [8:0]= sum[8:0] + {cout[8:0] << 1};
endmodule

module FA (a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
HA HalfAdder1(b,cin,sum1,carry1);
HA HalfAdder2(a,sum1,sum,carry2);
assign cout = carry1 | carry2;
endmodule

module HA (in1,in2,sum,carry);
input in1,in2;
output sum,carry;
assign sum = in1 ^ in2;
assign carry = in1 & in2;
endmodule