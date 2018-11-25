module float2fixed(
mantissa,
exponent,
fixed);

input [2:0] exponent;
input [5:0] mantissa;        
output [12:0] fixed;   

wire [5:0]  mantissa;
wire [2:0]  exponent;
reg  [12:0] fixed;


always @(*) begin
       case({exponent})
        
       3'b000: begin
       fixed = {mantissa[5],mantissa[5],mantissa[5],mantissa,1'b0,1'b0,1'b0,1'b0};
       end

       3'b001: begin
       fixed = {mantissa[5],mantissa[5],mantissa,1'b0,1'b0,1'b0,1'b0,1'b0};
       end
       
       3'b010: begin
       fixed = {mantissa[5],mantissa,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
       end
       
       3'b011: begin
       fixed = {mantissa,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
       end
       
       3'b100: begin
       fixed = {mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa[5], mantissa};
       end
       
       3'b101: begin
       fixed = {mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa,1'b0};
       end

       3'b110: begin
       fixed = {mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa,1'b0,1'b0};
       end

       3'b111: begin
       fixed = {mantissa[5],mantissa[5],mantissa[5],mantissa[5],mantissa,1'b0,1'b0,1'b0};
       end
       endcase
end 
endmodule

