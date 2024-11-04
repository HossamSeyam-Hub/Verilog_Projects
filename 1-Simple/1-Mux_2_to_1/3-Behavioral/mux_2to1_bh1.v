`timescale 1ns / 1ps

/*Hossam Ahmed Seyam*/
/*This code is illustrating How to design 2*1 mux in behavioral modelling */

module mux_2to1_bh1(x1, x2, s, f);

	input wire x1, x2 ,s;		// x1,x2 are mux inputs , s is the selector of the 2*1 mux
	output reg f;				//mux output
	
	always @(x1, x2 or s)
		begin
		if(s)
			begin 
			f = x2;
			end 
		else
			begin
			f = x1;
			end
		end
endmodule 

