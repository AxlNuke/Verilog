module top_module( 
    input [31:0] in,
    output [31:0] out );
    
    wire [7:0] a, b, c, d;
    
    assign a = in [7:0];
    assign b = in [15:8];
    assign c = in [23:16];
    assign d = in [31:24];

    assign out[31:24] = a;
    assign out[23:16] = b;
    assign out[15:8] = c;
    assign out[7:0] = d;
    
    endmodule