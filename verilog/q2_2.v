// 4-bit carry lookahead adder
module nadder(input [3:0] a, b, output [3:0] s, output cout);

	// generate and propagate
	wire [3:0] G, P;
	wire [3:0] C;	// carry
	assign G = a & b;
	assign P = a ^ b;
	// 
	assign C[0] = 0;
	assign C[1] = G[0] | (P[0] & C[0]);
	assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
	assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
	assign cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);
	//
	assign S = P ^ C;

endmodule
