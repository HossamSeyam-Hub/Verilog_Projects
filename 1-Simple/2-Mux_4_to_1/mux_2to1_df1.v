`timescale 1ns / 1ps

/*Hossam Ahmed Seyam*/
/*This code is illustrating How to design 2*1 mux in structural modelling especially data flow modeling */

module mux_2to1_df1(x1, x2, s, f);

	input wire x1, x2, s;	// x1,x2 are mux inputs , s is the selector of the 2*1 mux
	output wire f;			//mux output
	
	assign f = (x1 & ~s)|(x2 & s); //f =( x1.not(s) +  x2.s )

endmodule

