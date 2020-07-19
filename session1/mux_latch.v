module mux_latch (
    input din1,
    input din2, 
    input sel, 
    output reg dout
); 

always@(din1, din2) begin
    if(sel) dout = din1; 
    else dout = din2;
end

endmodule


