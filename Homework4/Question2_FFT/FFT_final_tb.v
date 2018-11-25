module FFT_final_tb();
reg clk;
reg [11:0] wn;
wire signed [15:0] x_re;
wire signed [15:0] y_re;
wire signed [15:0] x_im;
wire signed [15:0] y_im;
reg signed [15:0] a_re;
reg signed [15:0] a_im;
reg signed [15:0] b_re;
reg signed [15:0] b_im;

integer count,f;
integer seed;
FFT_final FFT_instance(clk,wn,a_re,a_im,b_re,b_im,x_re,x_im,y_re,y_im);

initial begin
clk=1'b1;
forever begin
#5 clk=~clk;
end
end

initial begin
#100;
seed=0;
f=$fopen("FFTout.m","w");
$display("Start ! ");
wn=12'b000000000000;
$random(seed);


for (count=1; count<= 1000; count=count+1)begin
{a_re,b_re}=$random(seed);
{a_im,b_im}=$random(seed);
#100;
if(count>1'b1)begin
$fwrite(f,"wn_exp(%d)=%d;a_r(%d)=%d;a_i(%d)=%d;b_r(%d)=%d;b_i(%d)=%d;x_r(%d)=%d;x_i(%d)=%d;y_r(%d)=%d;y_i(%d)=%d;\n",count,wn,count,$signed(a_re),count,$signed(a_im),count,$signed(b_re),count,$signed(b_im),count,$signed(x_re),count,$signed(x_im),count,$signed(y_re),count,$signed(y_im));  
wn=wn+12'b000000000100;
end
end
$fclose(f);
end
endmodule

