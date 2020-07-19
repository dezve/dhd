always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else
        q <= d;
end

always @(posedge clk) begin
    if (!d)
        q <= 1'b0;
    else
        q <= rst_n;
end


always @(posedge clk) begin
    q <= d & rst_n;
end


assign temp = d & rst_n;
always @(posedge clk) begin
    q <= temp;
end


always @(posedge clk) begin
    case (rst_n)
    1'b0: q <= 1'b0;
    1'b1: q <= d;
    endcase
end


always @(posedge clk) begin
    if (!rst_n) begin
        q <= 1’b0;
    end
    else
        q <= data1 & data2;
    end 
end 


always @(posedge clk or negedge async_reset_n or negedge async_preset_n)
    if (!asynch_preset_n) // Asynchronous preset – most dominant
        q <= 1’b1;
    else if (!async_rst_n) // Asynchronous reset
        q <= 1’b0;
    else begin // start of synchronous/clocked portion
    if (!synch_preset_n) // Synchronous preset – dominant
        q <= 1’b1;
    else if (!sync_rst_n) // Synchronous reset
        q <= 1’b0;
    else // data assignment
        q <= d;
end


