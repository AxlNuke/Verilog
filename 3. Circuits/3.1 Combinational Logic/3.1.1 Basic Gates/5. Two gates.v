module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire xnor12;
    
    assign xnor12 = ~(in1^in2);
    assign out = xnor12^in3;
    

endmodule
