`timescale 1ns / 1ps

/*Hossam Ahmed Seyam*/
/*This code is illustrating How to design 2*1 mux in behavioral modelling */

module mux_2to1_bh2(x1, x2, s, f);

	input wire x1, x2 ,s;		// x1,x2 are mux inputs , s is the selector of the 2*1 mux
	output reg f;				//mux output
	
	always @(x1, x2 , s)
		begin
		case(s)
			0: f = x1;
			1: f = x2;
			default: f = 0;
		endcase
		end
endmodule 
