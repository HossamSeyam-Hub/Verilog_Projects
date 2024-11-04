`timescale 1ns / 1ps

/*Hossam Ahmed Seyam*/
/*This code is illustrating How to design 2*1 mux in structural modelling especially gate level modeling */

module mux_2to1_gl(x1, x2, s, f);
	
	input wire x1, x2, s;	// x1,x2 are mux inputs , s is the selector of the 2*1 mux
	output wire f;			//mux output
	
	wire w1, w2, ns;		// Declare the internal signals

	and A1(w1, x1, ns);
	and A2(w2, s, x2);		
	not N(ns, s);
	or R(f, w1, w2);

endmodule
