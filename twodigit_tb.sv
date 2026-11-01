
module twodigit_tb;

logic [3:0] SW;
logic [6:0] HEX0, HEX1;

twodigit dut(SW, HEX0, HEX1);

initial begin
    for (int i = 0; i < 16; i++) begin
        SW = i;
        #10;
        $display("SW=%d HEX1=%b HEX0=%b", SW, HEX1, HEX0);
    end
    $finish;
end

endmodule
