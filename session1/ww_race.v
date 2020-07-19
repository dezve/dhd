module ww_race
(
    input req1, 
    input ack1,
    input req2,
    input ack2, 
    output reg busy
);

always@(*) begin
    if(req1 != ack1)
        busy = 1'b1;
    else 
        busy = 1'b0;
end

always@(*) begin
    if(req2 != ack2)
        busy = 1'b1;
    else 
        busy = 1'b0;
end

endmodule

