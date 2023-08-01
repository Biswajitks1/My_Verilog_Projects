module Fibonacci_generator #(parameter
  DATA_WIDTH=32
) (
  input clk,
  input resetn,
  output [DATA_WIDTH-1:0] out
);

reg [DATA_WIDTH-1:0]prev_val;
reg [DATA_WIDTH-1:0]curr_val;
reg count=0;
always@(posedge clk)begin
    if(!resetn) begin
        prev_val<=1;
        curr_val<=1;
    end    
    else  begin
        prev_val<=curr_val;
        curr_val<=curr_val+prev_val;
        
    end
    
end
assign out = prev_val;

endmodule
