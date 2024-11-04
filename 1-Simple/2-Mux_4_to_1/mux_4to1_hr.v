`timescale 1ps / 1ps

/*Hossam Ahmed Seyam*/
/*This code is illustrating How to design 4*1 mux using Hierarchical modeling */

module mux_4to1_hr(x0, x1, x2, x3, s0, s1, f);

	input wire x0, x1, x2, x3, s0, s1;					// x0,x1,x2,x3 are mux inputs , s0,s1 is the selectors of the 4*1 mux
	output wire f;										//mux output
	
	wire w0, w1;										//Declare the internal signals

	// First 2*1 mux to select between x0 and x1 based on selector s0
	mux_2to1_gl  m0(.x1(x0), .x2(x1), .s(s0), .f(w0));
	
	// Second 2*1 mux to select between x2 and x3 based on selector s0
	mux_2to1_df1 m1(.x1(x2), .x2(x3), .s(s0), .f(w1));
	
	// Third 2*1 mux to select between w0 and w1 based on selector s1, giving final output f
	mux_2to1_bh2 m2(.x1(w0), .x2(w1), .s(s1), .f(f));
	
endmodule

