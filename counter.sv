
module counter(
    input logic clk, reset,
    output logic [3:0] count
);

always_ff @(negedge clk or negedge reset)
    if (!reset)
        count <= 0;
    else
        count <= count + 1;

endmodule
