module fixedtofloating_tb;
reg fixedinput[6:0];
wire floatingmantissa[3:0];
wire floatingexponent[2:0];
fixedtofloating fxtofl(fixedinput[6:0],floatingmantissa[3:0],floatingexponent[2:0]);

initial 
begin
$monitor($time," Fixed Point Input = %b \t Mantissa = %b \t Exponent = %b \n",fixedinput[6:0],floatingmantissa[3:0],floatingexponent[2:0]);
#10;
fixedinput[6:0] = 1100100;
#50;
fixedinput[6:0] = 1010010;
#50;
fixedinput[6:0] = 0011100;
#50;
fixedinput[6:0] = 0100100;
#50;
end
endmodule

