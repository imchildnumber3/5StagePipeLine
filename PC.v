module PC (
	input wire clk,
	input wire [31:0] PC_in,
	output reg [31:0] PC_out);
	
	initial begin
		PC_out = 0;
	end 

	always @(posedge clk) begin
		PC_out = PC_in;
	end
	
endmodule 