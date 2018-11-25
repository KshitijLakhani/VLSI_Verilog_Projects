
module matlabgenFFT_pipe();

reg clk;
reg [15:0] a_i;
reg [15:0] a_r;
reg [15:0] b_i;
reg [15:0] b_r;
reg [11:0] wn_exp;
reg reset;
wire [15:0] x_r;
wire [15:0] x_i;
wire [15:0] y_r;
wire [15:0] y_i;
wire [1:0] state;


integer i,f;
FFT_pipe matlab_FFT(clk,wn_exp,a_r,a_i,b_r,b_i,reset,x_r,x_i,y_r,y_i,state);


initial begin
clk=1'b1;
forever begin
# 5 clk=~clk;
end
end


initial begin
f=$fopen("FFT_pipe.m","w");
$display("Start !");
reset=1'b1;
#5;
reset=1'b0;
for (i=1;i<100;i=i+1) begin
#10;
a_r=$random($time) % (2000); 
a_i=$random($time) % (2000);
b_r=$random($time) % (2000);
b_i=$random($time) % (2000);
wn_exp=12'b101010101010;
$fwrite(f,"wn_exp(%d)=%d;a_r(%d)=%d;a_i(%d)=%d;b_r(%d)=%d;b_i(%d)=%d;x_r(%d)=%d;x_i(%d)=%d;y_r(%d)=%d;y_i(%d)=%d;\n",i,wn_exp,i,$signed(a_r),i,$signed(a_i),i,$signed(b_r),i,$signed(b_i),i,$signed(x_r),i,$signed(x_i),i,$signed(y_r),i,$signed(y_i));  
$display($time,"wn_exp(%d)=%d;a_r(%d)=%d;a_i(%d)=%d;b_r(%d)=%d;b_i(%d)=%d;x_r(%d)=%d;x_i(%d)=%d;y_r(%d)=%d;y_i(%d)=%d;state(%d)=%d\n",i,wn_exp,i,$signed(a_r),i,$signed(a_i),i,$signed(b_r),i,$signed(b_i),i,$signed(x_r),i,$signed(x_i),i,$signed(y_r),i,$signed(y_i),i,state);  
end
$fclose(f);
end
//$finish;
endmodule