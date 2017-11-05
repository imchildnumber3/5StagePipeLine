module shift(
	input wire[7:0] in,
	output reg [7:0] out);
	

	always begin
		out = (in - 4) >> 2;
	end
	
endmodule 