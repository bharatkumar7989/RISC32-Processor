`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 22:31:00
// Design Name: 
// Module Name: alu32
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


module alu32(
    input  [31:0] A,
    input  [31:0] B,
    input  [2:0] ALU_Sel,

    output reg [31:0] ALU_Out,
    output Zero
);

always @(*)
begin
    case(ALU_Sel)

        3'b000: ALU_Out = A + B;  // ADD

        3'b001: ALU_Out = A - B;  // SUB

        3'b010: ALU_Out = A & B;  // AND

        3'b011: ALU_Out = A | B;  // OR

        3'b100: ALU_Out = A ^ B;  // XOR

        default: ALU_Out = 32'b0;

    endcase
end

assign Zero = (ALU_Out == 32'b0);

endmodule