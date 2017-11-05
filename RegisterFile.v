// file register.v

module RegisterFile(
    input wire clock,
    input wire reset,
    input wire[31:0] write_data_in,
	 input wire[4:0] write_address,
	 input wire WriteEnable,
	 input wire[4:0] read_address_debug, 
	 input wire clock_debug,
    input wire [4:0] read_address_1,
	 input wire [4:0] read_address_2,
    output reg [31:0] data_out_1,
	 output reg	[31:0] data_out_2,
	 output reg [31:0] data_out_debug);
	 
	 reg[31:0] regfile[31:0];
	 integer i;
	 
	 initial begin
		for(i = 0; i < 32; i = i + 1) begin
			regfile[i] = i;
		end	 
	 end
		
  
	always @(posedge clock_debug) begin
		if(read_address_debug) 
			data_out_debug = regfile[read_address_debug]; 
		else 
			data_out_debug = 0;
		
	end
	


  always @(posedge clock) begin
        if (reset) begin
            for(i = 0; i < 32; i = i + 1) begin
					regfile[i] = 0;
				end
        end else if (!WriteEnable) begin
            regfile[write_address] = write_data_in;
			end

    end
	 
	 always @(negedge clock) begin
			data_out_1 <= regfile[read_address_1];
			data_out_2 <= regfile[read_address_2];
	end 

	
endmodule
