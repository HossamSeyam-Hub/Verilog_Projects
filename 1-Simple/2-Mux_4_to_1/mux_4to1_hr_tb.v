module mux_4to1_hr_tb();
	
	reg x0_tb, x1_tb, x2_tb, x3_tb, s0_tb, s1_tb;
	wire f_tb;

	initial
		begin
		x0_tb =  1; x1_tb = 0; x2_tb = 0; x3_tb = 0; s0_tb = 0; s1_tb = 0; #50;	
		x0_tb =  1; x1_tb = 0; x2_tb = 0; x3_tb = 1; s0_tb = 0; s1_tb = 1; #50;	
		x0_tb =  1; x1_tb = 0; x2_tb = 0; x3_tb = 0; s0_tb = 0; s1_tb = 0; #50;	
		x0_tb =  0; x1_tb = 0; x2_tb = 0; x3_tb = 1; s0_tb = 0; s1_tb = 1; #50;	
		
		x0_tb =  0; x1_tb = 0; x2_tb = 1; x3_tb = 0; s0_tb = 1; s1_tb = 0; #50;	
		x0_tb =  0; x1_tb = 0; x2_tb = 1; x3_tb = 1; s0_tb = 1; s1_tb = 1; #50;	
		x0_tb =  1; x1_tb = 0; x2_tb = 1; x3_tb = 0; s0_tb = 1; s1_tb = 0; #50;	
		x0_tb =  1; x1_tb = 0; x2_tb = 1; x3_tb = 1; s0_tb = 1; s1_tb = 1; #50;	
		
		x0_tb =  1; x1_tb = 1; x2_tb = 0; x3_tb = 0; s0_tb = 0; s1_tb = 0; #50;	
		x0_tb =  0; x1_tb = 1; x2_tb = 0; x3_tb = 1; s0_tb = 0; s1_tb = 1; #50;	
		x0_tb =  0; x1_tb = 1; x2_tb = 0; x3_tb = 0; s0_tb = 0; s1_tb = 0; #50;	
		x0_tb =  1; x1_tb = 1; x2_tb = 0; x3_tb = 1; s0_tb = 0; s1_tb = 1; #50;	
		
		x0_tb =  1; x1_tb = 1; x2_tb = 1; x3_tb = 0; s0_tb = 1; s1_tb = 0; #50;	
		x0_tb =  1; x1_tb = 1; x2_tb = 1; x3_tb = 1; s0_tb = 1; s1_tb = 1; #50;	
		x0_tb =  0; x1_tb = 1; x2_tb = 1; x3_tb = 0; s0_tb = 1; s1_tb = 0; #50;	
		x0_tb =  0; x1_tb = 1; x2_tb = 1; x3_tb = 1; s0_tb = 1; s1_tb = 1; #50;	
		end
	mux_4to1_hr M1(.x0(x0_tb), .x1(x1_tb),.x2(x2_tb), .x3(x3_tb),.s0(s0_tb), .s1(s1_tb),.f(f_tb));
	
endmodule 