module rw_race
(
   input a, b, c,
   output y,
   output reg z
);

assign y = a | c; 

always@(b, c)  begin
    if(y) 
        z = b | c; 
    else 
        z = b & c;
end

endmodule

