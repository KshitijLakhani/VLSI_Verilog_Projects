module TopLevel_testbench;
reg [4:0] ina;
reg [4:0] inb;
reg [4:0] inc;
wire [7:0] aextended;
wire [7:0] bextended;
wire [7:0] cinextended;
wire [8:0] fsum;
wire [8:0] fcout;
wire [8:0] outaddition;
TopLevel stage1(ina[4:0],inb[4:0],inc[4:0],aextended[7:0],bextended[7:0],cinextended[7:0],fsum[8:0],fcout[8:0],outaddition[8:0]);

initial
begin
$monitor($time,"ina = %b \t inb = %b \t inc = %b \t outsum = %b \n",ina[4:0],inb[4:0],inc[4:0],outaddition[8:0]);
ina[4:0] = 11001;
# 10;
inb[4:0] = 00001;
# 10;
inc[4:0] = 10010;
/*#100;
ina[4:0] = 11001;
inb[4:0] = 00001;
inc[4:0] = 01010;
# 100;
ina[4:0] = 11111;
inb[4:0] = 11010;
inc[4:0] = 10000;
# 100;*/
end
endmodule
