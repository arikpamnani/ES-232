module alu(input [7:0] a, b, input [15:0] sel, output [7:0] out);

	reg out;
	always @ (sel)
		begin
			case(sel)
				// more bits can be used for out
				4'b0000 : out <= a + b;
				4'b0001 : out <= a - b;
				4'b0010 : out <= b - a;
				4'b0011 : out <= a * b;
				4'b0100 : out <= a / b;
				4'b0101 : out <= b / a;
				4'b0110 : out <= a + 4'b0001;
				4'b0111 : out <= b + 4'b0001;
				4'b1000 : out <= a - 4'b0001;
				4'b1010 : out <= b - 4'b0001;
				4'b1011 : out <= a <<< 1;
				4'b1100 : out <= a >>> 1;
				4'b1101 : out <= b <<< 1;
				4'b1110 : out <= b >>> 1;
				4'b1111 : out <= a % b; 
			endcase
		end

endmodule
