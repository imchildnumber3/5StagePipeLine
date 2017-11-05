module ALU ( 
	input wire[1:0] control,
	input wire[31:0] variable1,
	input wire[31:0] variable2,
	output reg[31:0] result);
	
	always 
		case(control) 
			0: result = variable1 + variable2;		//add
			1: result = variable1 - variable2;		//sub
			2: result = variable1 & variable2;		//AND
			3: result = variable1 | variable2;		//OR
		endcase
endmodule
	