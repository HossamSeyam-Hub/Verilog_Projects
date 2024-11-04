module T_FF(clk, rst, in, out);

	input wire clk, rst, in;
	output reg out;

	always @(posedge clk , posedge rst)	
		begin
		if(rst)
			begin
			out <= 0;
			end
		else
			begin
			if(in)
				begin
				out <= ~out; #50;
				end
			else 
				begin 
				out <= out;
				end
			end
		end
endmodule 