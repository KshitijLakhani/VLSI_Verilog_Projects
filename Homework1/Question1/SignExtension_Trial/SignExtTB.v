module signextendTB;
reg [7:0] in;
wire [12:0] out;
signextend instance1 (in[7:0],out[12:0]);

initial
begin
$monitor ($time,"In = %b and Out = %b",in[7:0],out[12:0]);
in[7:0]=11100101;
#5;
in[7:0]=00100111;
#5;
in[7:0]=10100001;
#5;
end
endmodule

