module latch_if (
    input en, 
    input load,
    input clear,
    input din,
    output reg dout
);

always@(*) begin
    if(en) begin
        if(load) begin
	    dout = din;
	end
	else if(clear) begin
	    dout = 1'b0;
	end
    end
end

endmodule


