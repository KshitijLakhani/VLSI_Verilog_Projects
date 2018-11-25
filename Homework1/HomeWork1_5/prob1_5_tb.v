module carrysave_4is2_tb;
reg [4:0] in;
wire c0,c1,sum;
carrysave_4is2 carrysave_tb(in[4:0],c0,c1,sum);
initial
begin
$monitor($time,"input is %b \t c0 is %b \t c1 is %b \t sum is %b \n",in[4:0],c0,c1,sum);
#50;
in[4:0] = 5'b10110;
#50
in[4:0] = 5'b00000;
#50;
in[4:0] = 5'10001;
#50;
in[4:0] = 5'00101;
end
endmodule
