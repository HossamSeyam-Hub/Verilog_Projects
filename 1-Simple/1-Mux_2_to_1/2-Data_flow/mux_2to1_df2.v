`timescale 1ns / 1ps

/*Hossam Ahmed Seyam*/
/*This code is illustrating How to design 2*1 mux in structural modelling especially data flow modeling */

module mux_2to1_df2(x1, x2, s, f);

	input wire x1, x2, s;	// x1,x2 are mux inputs , s is the selector of the 2*1 mux
	output wire f;			//mux output
	
	assign f = s?x2:x1;		//if s acheived f = x2 ,if not then f =x1
endmodule
