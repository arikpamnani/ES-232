module counter(input clk, reset, output [3:0] out);
	
	// 4-bit up counter
	reg out;
	always @ (posedge clk, posedge reset)
	begin
		if(!reset)
			out <= out + 4'b0001;
			// out <= out + 4'b0010;
		else
			out = 4'b0000;
	end	

endmodule
