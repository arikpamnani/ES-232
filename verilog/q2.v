// 1-bit full adder
module fa(input a, b, cin, output cout, sum);

	// 1-bit full adder
	assign s = a ^ b ^ cin;
	assign cout = (a & b) | (cin & (a ^ b));

endmodule

// 4-bit ripple carry adder
module nadder(input [3:0] a, b, output [3:0] out, output c);
	
	// c0 = 0
	wire c1, c2, c3;
	fa f0(a[0], b[0], 0, c1, out[0]);
	fa f1(a[1], b[1], c1, c2, out[1]);
	fa f2(a[2], b[2], c2, c3, out[2]);
	fa f3(a[3], b[3], c3, cout, out[3]);

endmodule
