module top_module (
    input ring, vibrate_mode,
    output ringer, motor);
    
    assign motor = ring & vibrate_mode;
    assign ringer = ring & !vibrate_mode;
endmodule