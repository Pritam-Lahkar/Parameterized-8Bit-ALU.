`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 22:12:03
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU#(parameter WIDTH = 8 )(
input wire [WIDTH - 1 :0 ] a,
input  wire [WIDTH-1:0] b,      // 2nd Input operand
    input  wire [2:0]       opcode, // 3-bit Operation code
    output reg  [WIDTH:0] result, // ALU output
    output wire     zero ,
    output wire  carry  ,
    output wire overflow 
     // Zero flag
    );
    always @(*) begin 
     case(opcode) 
       3'b000 : result = a + b;
       3'b001 : result = a -b ;
       3'b010: result = a & b;       // Bitwise AND
            3'b011: result = a | b;       // Bitwise OR
            3'b100: result = a ^ b;       // Bitwise XOR
            3'b101: result = a << 1;      // Logical Shift Left
            3'b110: result = a >> 1;      // Logical Shift Right
            3'b111: result = (a < b) ? 1 : 0; // Comparison (Set on Less Than)
            default  : result = {WIDTH {1'b0}};
            endcase
            end 
            assign carry = result[WIDTH] ;
            assign zero = ( result == {WIDTH-1 {1'b0}}) ? 1'b1 : 1'b0 ;
           // If A and B have the same sign, BUT the result has a different sign:
assign overflow = (a[WIDTH-1] == b[WIDTH-1]) && (result[WIDTH-1] != a[WIDTH-1]);
endmodule
