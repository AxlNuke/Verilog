module top_module (
    input [1:0] A,
    input [1:0] B,
    output z );

    always @(*) begin
        if ((A[0:0] == B[0:0]) && (A[1:1] == B[1:1])) begin
            z = 1;
        end
        else begin
            z = 0;
        end
    end

endmodule
