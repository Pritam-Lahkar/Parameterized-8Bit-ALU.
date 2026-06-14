`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 22:51:32
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU ; parameter WIDTH = 8;

    // Registers hold values to drive the inputs
    reg [WIDTH-1:0] tb_a;
    reg [WIDTH-1:0] tb_b;
    reg [2:0]      tb_opcode;

    // Wires observe the outputs
    wire [WIDTH-1:0] tb_result;
    wire             tb_zero;
    wire   tb_carry ;
    wire  tb_overflow ;
ALU #(.WIDTH(WIDTH)) uut (
        .a(tb_a),
        .b(tb_b),
        .opcode(tb_opcode),
        .result(tb_result),
        .zero(tb_zero),
        .carry(tb_carry),
        .overflow(tb_overflow)
    );
    initial begin
        // Initialize Inputs to zero
        tb_a = 8'd0;
        tb_b = 8'd0;
        tb_opcode = 3'b000;
        
        // Wait 100 ns for global reset to finish
        #100;
        
        tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b000;
        #20;
        
         tb_a = 8'd5;
        tb_b = 8'd5;
        tb_opcode = 3'b001;
        #20;
        
         tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b010;
        #20;
        
         tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b011;
        #20;
        
         tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b100;
        #20;
        
         tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b101;
        #20;
        
         tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b110;
        #20;
        
         tb_a = 8'd10;
        tb_b = 8'd5;
        tb_opcode = 3'b111;
        #20;
        
        tb_opcode = 3'b000;
        tb_a = 8'd200;      
        tb_b = 8'd100;      
         #20;                


      tb_opcode = 3'b000; 
         tb_a = 8'd127;      
         tb_b = 8'd2;        
         #20;
        
        $finish;
         
         end
endmodule
