module signextend (extend[7:0],extended[12:0]);
input [7:0] extend;
output [12:0] extended;
assign extended[12:0] = {{5{extend[7]}}, extend[7:0]};
endmodule

