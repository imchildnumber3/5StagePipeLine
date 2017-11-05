

module Add32(
	input wire [31:0] a,
	input wire [31:0] b,
	input wire clk,
	output reg [31:0] c);
	
	
	always @(negedge clk) begin
		c = a + b;
	end
	
endmodule 