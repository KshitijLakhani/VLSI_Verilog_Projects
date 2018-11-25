module adder_3is2_tb();
reg a,b,cin;
wire s,cout;
adder_3is2 testbench_instantiate(a,b,cin,s,cout);

initial begin 
$monitor ($time,"a = %b \t b = %b \t c = %b \t s = %b \t cout = %b \n",a,b,cin,s,cout);
# 10;
a = 1'b0;
b = 1'b1;
cin = 1'b1;
# 10;
a = 1'b1;
b = 1'b0;
cin = 1'b0;
# 10;
a = 1'b1;
b = 1'b1;
cin = 1'b1;
# 10;
end
endmodule

