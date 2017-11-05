module Controller (

	input wire [5:0] funct, 
	output reg [1:0] b);
	
	
	
	always begin
	case(funct) 
		6'b100000: b = 0;		//Add
		6'b100010: b = 1;		//Sub	
		6'b100100: b = 2;		//AND
		6'b100101: b = 3;		//OR
		
	endcase
	end
	
endmodule 