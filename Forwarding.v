module forwarding (
	input wire [4:0] rs,
	input wire [4:0] rt, 
	input wire [4:0] rd,
	input wire [4:0] rd2,
	
	output reg[1:0] Mux1, 
	output reg[1:0] Mux2);

	always begin
		reg daddy = 0;
		reg mommy = 0;
		Mux1 = 2'b10;
		Mux2 = 2'b10;
		if(rd == rs) begin
			daddy = 1;
			Mux1 = 2'b00;
		end
		
		if(rd == rt) begin
			mommy = 1;
			Mux2 = 2'b00;
		end
		
		if(rd2 == rs && !daddy) begin
			Mux1 = 2'b01;
		end
		
		if(rd2 == rt && !mommy) begin
			Mux2 = 2'b01;
		end
		
	end
		
endmodule 
	 