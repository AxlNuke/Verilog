module top_module (
    input clk, d,
    output q);

    wire ff_out_1, ff_out_2;

    my_dff flip_flop_d_1(.clk(clk), .d(d), .q(ff_out_1));

    my_dff flip_flop_d_2(.clk(clk), .d(ff_out_1), .q(ff_out_2));

    my_dff flip_flop_d_3(.clk(clk), .d(ff_out_2), .q(q));

endmodule