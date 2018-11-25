module testbenchFA;
reg input1,input2,cinfinal;
wire sumfinal,carryfinal;
RippleFA FAtest(input1,input2,cinfinal,sumfinal,carryfinal);

initial
begin
$monitor($time,"input1 = %b \t input2 = %b \t cin = %b \t sum = %b \t cout = %b \n",input1,input2,cinfinal,sumfinal,carryfinal);
input1 = 1'b0;
input2 = 1'b0;
cinfinal = 1'b0;
# 5;
input1 = 1'b1;
input2 = 1'b0;
cinfinal = 1'b0;
# 5;
input1 = 1'b1;
input2 = 1'b0;
cinfinal = 1'b1;
# 5;
input1 = 1'b1;
input2 = 1'b1;
cinfinal = 1'b1;
# 5;
end 
endmodule

