module tb_counter;
    reg clk;
    reg reset;
    wire [3:0] count;

    initial begin
        clk = 1'b0; 
	forever #5 clk = ~clk;
    end

    initial begin
        reset = 1'b1;
	#15;
	reset = 1'b0;
        #40;
	reset = 1'b1;
	#100;
	$finish;
    end

    initial begin
        $dumpfile("tb_counter.vcd"); 
	$dumpvars(0,tb_counter);
    end

    counter i_counter
    ( 
        .clk(clk),
	.reset(reset),
	.count(count)
    );

endmodule

