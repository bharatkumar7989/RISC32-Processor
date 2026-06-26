`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 22:36:40
// Design Name: 
// Module Name: alu32_tb
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


`timescale 1ns / 1ps

module alu32_tb;

reg [31:0] A;
reg [31:0] B;
reg [2:0] ALU_Sel;

wire [31:0] ALU_Out;
wire Zero;

alu32 uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .Zero(Zero)
);

initial begin

A = 10;
B = 5;

ALU_Sel = 3'b000;
#10;

ALU_Sel = 3'b001;
#10;

ALU_Sel = 3'b010;
#10;

ALU_Sel = 3'b011;
#10;

ALU_Sel = 3'b100;
#10;

A = 5;
B = 5;
ALU_Sel = 3'b001;
#10;

$stop;

end

endmodule