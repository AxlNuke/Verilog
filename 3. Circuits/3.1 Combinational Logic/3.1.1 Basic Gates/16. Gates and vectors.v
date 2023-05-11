module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );

    always @(*) begin
        case (in)
            4'd3: out_both = 3'b001;
            4'd6: out_both = 3'b010;
            4'd7: out_both = 3'b011;
            4'd11: out_both = 3'b001;
            4'd12: out_both = 3'b100;
            4'd13: out_both = 3'b100;
            4'd14: out_both = 3'b110;
            4'd15: out_both = 3'b111;
            default: out_both = 3'b000;
        endcase
    end

    always @(*) begin
        case (in)
            4'd0: out_any = 3'b000;
            4'd1: out_any = 3'b001;
            4'd2: out_any = 3'b011;
            4'd3: out_any = 3'b011;
            4'd4: out_any = 3'b110;
            4'd5: out_any = 3'b111;
            4'd6: out_any = 3'b111;
            4'd7: out_any = 3'b111;
            4'd8: out_any = 3'b100;
            4'd9: out_any = 3'b101;
            4'd10: out_any = 3'b111;
            4'd11: out_any = 3'b111;
            4'd12: out_any = 3'b110;
            4'd13: out_any = 3'b111;
            4'd14: out_any = 3'b111;
            4'd15: out_any = 3'b111;
        endcase
    end

    always @(*) begin
        case (in)
            4'd0: out_different = 4'b0000;
            4'd1: out_different = 4'b1001;
            4'd2: out_different = 4'b0011;
            4'd3: out_different = 4'b1010;
            4'd4: out_different = 4'b0110;
            4'd5: out_different = 4'b1111;
            4'd6: out_different = 4'b0101;
            4'd7: out_different = 4'b1100;
            4'd8: out_different = 4'b1100;
            4'd9: out_different = 4'b0101;
            4'd10: out_different = 4'b1111;
            4'd11: out_different = 4'b0110;
            4'd12: out_different = 4'b1010;
            4'd13: out_different = 4'b0011;
            4'd14: out_different = 4'b1001;
            4'd15: out_different = 4'b0000;
        endcase
    end
endmodule