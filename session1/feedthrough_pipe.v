module feedthrough_pipe
(
    input clk,
    input din, 
    output reg dout
);

reg din_s1;
reg din_s2;
reg din_s3; 

always @(posedge clk) begin
    din_s1 <= din;
    din_s2 <= din_s1; 
    din_s3 <= din_s2;
    dout   <= din_s3;
end

endmodule


