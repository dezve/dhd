module ww_no_race
(
    input req1, 
    input ack1,
    input req2,
    input ack2, 
    output busy
);

reg busy1;
reg busy2; 

always@(*) begin
    if(req1 != ack1)
        busy1 = 1'b1;
    else 
        busy1 = 1'b0;
end

always@(*) begin
    if(req2 != ack2)
        busy2 = 1'b1;
    else 
        busy2 = 1'b0;
end

assign busy = busy1 | busy2; 

endmodule

