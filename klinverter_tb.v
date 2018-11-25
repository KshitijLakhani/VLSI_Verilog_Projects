module testbench;
reg in1,out1;
Inverter instance1 (in1,out1);

initial
begin
$monitor($time,"Input = %b Output = %b\n",in1,out1);
in1 = 0;
#5;
in1 = 1;
#5;
in1 = 0;
#5; 
in1 = 1;
end
endmodule
