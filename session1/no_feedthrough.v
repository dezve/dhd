module no_feedthrough 
(
    input clk, 
    input din, 
    output reg dout
); 

reg din_s1;
reg clk_div;

always@(posedge clk) begin
    din_s1 <= din; 
end

always@(posedge clk) begin
    clk_div = ~clk; 
end

always@(posedge clk_div) begin
    dout <= din_s1; 
end

endmodule 


