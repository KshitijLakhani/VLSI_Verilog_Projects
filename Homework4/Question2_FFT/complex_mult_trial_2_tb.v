module complexmulttrial2_tb();


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
integer i;


complexmulttrial2 cmt2(a_r,a_i,b_r,b_i,w_r,w_i,x_r,x_i,y_r,y_i,temp_r,temp_i);

initial begin
$monitor($time,"a_r=%b a_i=%b b_r=%b b_i=%b w_r=%b w_i=%b x_r=%b x_i=%b temp_r=%b y_r=%b temp_i=%b y_i=%b",a_r,a_i,b_r,b_i,w_r,w_i,x_r,x_i,temp_r,y_r,temp_i,y_i);
#10;
a_i=16'b0000000111111111;
a_r=16'b0000100000000000;
b_i=16'b1111111111111111;
b_r=16'b1000000111111111;
w_r=16'b0111111111111111;
w_i=16'b1000000000000000;



for (i=0;i<10;i=i+1) begin
# 10;
a_i=a_i + 16'b0000000000000001;
a_r=a_r + 16'b0000000000000001;
b_i=b_i - 16'b0000000000000001;
b_r=b_r - 16'b0000000000000001;

end

end
endmodule

