
module sevenseg_tb;

    logic [3:0] SW;
    logic [6:0] HEX0;

    sevenseg dut(SW, HEX0);

    initial begin
        for (int i = 0; i < 16; i++) begin
            SW = i;
            #10;
            $display("SW = %d, HEX0 = %b", SW, HEX0);
        end
        $finish;
    end

endmodule
