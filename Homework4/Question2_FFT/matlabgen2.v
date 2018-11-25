
module matlabgen2();

reg [15:0] a_i;
reg [15:0] a_r;
reg [15:0] b_i;
reg [15:0] b_r;
reg [15:0] w_r;
reg [15:0] w_i;
wire [15:0] x_r;
wire [15:0] x_i;
wire [15:0] y_r;
wire [15:0] y_i;
wire [32:0] temp_r;
wire [32:0] temp_i;

integer i,f;
complexmulttrial2 cmt_2(a_r,a_i,b_r,b_i,w_r,w_i,x_r,x_i,y_r,y_i,temp_r,temp_i);


initial begin
//# 10;
f=$fopen("compmulttry2.m","w");
$display("Start !");
a_i=16'b0000000111111111;
a_r=16'b0000100000000000;
b_i=16'b1111111111111111;
b_r=16'b1000000111111111;
w_r=16'b0111111111111111;
w_i=16'b1000000000000000;


for (i=1;i<10;i=i+1) begin
#10;
$fwrite(f,"a_r(%d)=%d;a_i(%d)=%d;b_r(%d)=%d;b_i(%d)=%d;w_r(%d)=%d;w_i(%d)=%d;x_r(%d)=%d;x_i(%d)=%d;y_r(%d)=%d;y_i(%d)=%d;\n",i,$signed(a_r),i,$signed(a_i),i,$signed(b_r),i,$signed(b_i),i,$signed(w_r),i,$signed(w_i),i,$signed(x_r),i,$signed(x_i),i,$signed(y_r),i,$signed(y_i));

a_i=a_i + 16'b0000000000000001;
a_r=a_r + 16'b0000000000000001;
b_i=b_i - 16'b0000000000000001;
b_r=b_r - 16'b0000000000000001;
end


$fclose(f);
//$finish;
end
endmodule

















