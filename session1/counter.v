module counter (
    input clk,
    input reset, 
    output reg [3:0] count
);

always@(posedge clk, negedge reset) begin
    if(!reset) 
        count <= 4'b0; 
    else 
        count <= count + 4'b1;
end

endmodule
