module latch_case (
    input en, 
    input load,
    input clear,
    input din,
    output reg dout
);

wire [2:0] state;

assign state = {en,load,clear}; 

always@(*) begin
    case(state)
        3'b110 : dout = din;
	3'b101 : dout = 1'b0;
    endcase
end

endmodule


