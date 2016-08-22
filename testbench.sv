module testbench();

reg unsigned [1:0] a, b, y, z;

adder adder(a, b, y);

initial begin 
	for (int i = 0; i < 4; i++) begin
		for (int j = 0; j < 4; j++) begin
			a = i;
			b = j;
                        z = i + j;
                        #5
			assert(y == z);
		end
	end
        $finish;
end

endmodule
