


module PipeReg (

	input wire [31:0] a,
	input wire [31:0] b,
	input wire [4:0] c,
	input wire clk,
	input wire [1:0] rs,
	input wire [5:0] opcode,
	input wire [4:0] dad,
	input wire [4:0] mom,
	
	
	output reg[31:0] a0,
	output reg[31:0] b0,
	output reg[4:0] c0,
	output reg[1:0] rs1,
	output reg[5:0] opcode1,
	output reg[4:0] dad1,
	output reg[4:0] mom1);
	
	
	
	always @(posedge clk) begin
	
		a0 = a;
		b0 = b;
		c0 = c;
		rs1 = rs;
		opcode1 = opcode;
		dad1 = dad;
		mom1 = mom;
		
	end
	
endmodule 
		