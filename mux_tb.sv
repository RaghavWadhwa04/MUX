`timescale 1ns/1ps

module mux_tb;

    logic [7:0] in;
    logic [2:0] sel;
    logic y;

    mux_8to1 dut (
        .in(in),
        .sel(sel),
        .y(y)
    );

    initial begin
        in = 8'b10110010;

        for (int i = 0; i < 8; i++) begin
            sel = i;
            #10;

            $display("SEL = %0d | IN = %b | Y = %b",
                     sel, in, y);
        end

        $finish;
    end

endmodule