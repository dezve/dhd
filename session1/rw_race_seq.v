module rw_race_seq 
(
    input clk,
    input din,
    output reg dout
);

reg din_s1;

always @(posedge clk) begin
    din_s1 = din;
end

always @(posedge clk) begin
    dout = din_s1;
end

endmodule


