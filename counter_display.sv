
module counter_display(
    input logic [1:0] KEY,
    output logic [6:0] HEX0, HEX1
);

logic [3:0] count;

counter c1(
    .clk(KEY[1]),
    .reset(KEY[0]),
    .count(count)
);

twodigit d1(
    .SW(count),
    .HEX0(HEX0),
    .HEX1(HEX1)
);

endmodule
