module testbench();

reg unsigned a, b, y;

adder adder(a, b, y);

initial begin 
	for (int i = 0; i < 4; i++) begin
		for (int j = 0; j < 4; j++) begin
			a = i;
			b = j;
			assert(y == i + j);
		end
	end
end

endmodule