module add4 (
	input wire [31:0] pc_in,
	input wire clk,
	output reg [31:0] pc_out);
	
		always @(negedge clk) begin
		pc_out = pc_in + 4;
	end
	
	
endmodule 