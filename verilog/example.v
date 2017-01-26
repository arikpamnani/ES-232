// multiplexer
module mux(A, B, S, out);
	input A, B, S;
	output out;
	wire g, t;

	and(g, A, S);
	and(t, B, ~S);
	or(out, g, t);
endmodule

// multiplexer
// continuous assignment
module mux(A, B, S, out);
	input A, B, S;
	output out;
	
	assign out = (A & S) | (B & ~S);
endmodule

// is [1:0] treated a two-bit number

// multiplexer 
// always block

module mux(input a, b, c, d, input [1:0] S, output out);
	reg out;
	always @ (*)	
		begin
			case(S)
				default : out = 1'b1;
				0 : out = a;
				1 : out = b;
				2 : out = c;
				3 : out = d;
			endcase
		end
endmodule


