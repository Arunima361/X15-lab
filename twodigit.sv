
module twodigit(
    input logic [3:0] SW,
    output logic [6:0] HEX0, HEX1
);

logic [3:0] units, tens;

always_comb begin
    if (SW >= 10) begin
        tens = 1;
        units = SW - 10;
    end
    else begin
        tens = 0;
        units = SW;
    end
end

always_comb begin
    case(units)
        0: HEX0 = 7'b1000000;
        1: HEX0 = 7'b1111001;
        2: HEX0 = 7'b0100100;
        3: HEX0 = 7'b0110000;
        4: HEX0 = 7'b0011001;
        5: HEX0 = 7'b0010010;
        6: HEX0 = 7'b0000010;
        7: HEX0 = 7'b1111000;
        8: HEX0 = 7'b0000000;
        9: HEX0 = 7'b0010000;
        default: HEX0 = 7'b1111111;
    endcase
end

always_comb begin
    if (tens == 1)
        HEX1 = 7'b1111001;
    else
        HEX1 = 7'b1000000;
end

endmodule
