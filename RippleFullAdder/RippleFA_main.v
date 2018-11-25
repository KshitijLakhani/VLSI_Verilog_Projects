module RippleFA (a,b,cin,sum,cout);
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

