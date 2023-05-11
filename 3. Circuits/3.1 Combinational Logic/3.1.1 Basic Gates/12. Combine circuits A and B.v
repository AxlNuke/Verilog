module top_module (
    input x, y,
    output z);

    wire out_a1, out_a2, out_b1, out_b2;
    wire or_a1_b1, and_a2_b2;

    circuit_a a1(x, y, out_a1);
    circuit_b b1(x, y, out_b1);

    assign or_a1_b1 = out_a1 | out_b1;

    circuit_a a2(x, y, out_a2);
    circuit_b b2(x, y, out_b2);

    assign and_a2_b2 = out_a2 & out_b2;

    assign z = or_a1_b1 ^ and_a2_b2;
endmodule

module circuit_a (
    input x, y,
    output z);

    assign z = (x ^ y) & x;
endmodule

module circuit_b (
    input x, y,
    output z );

    assign z = ~(x^y);
endmodule
