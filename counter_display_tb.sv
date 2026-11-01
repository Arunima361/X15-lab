
module counter_display_tb;

logic [1:0] KEY;
logic [6:0] HEX0, HEX1;

counter_display dut(KEY, HEX0, HEX1);

initial begin
    KEY = 2'b11;
    #5;
    KEY[0] = 0;
    #10;
    KEY[0] = 1;
end

initial begin
    #20;
    repeat(18) begin
        KEY[1] = 0;
        #10;
        KEY[1] = 1;
        #10;
    end
    $finish;
end

endmodule
