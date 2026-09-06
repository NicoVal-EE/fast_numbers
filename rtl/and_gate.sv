module and_gate (
    input  logic sw0,
    input  logic sw1,
    output logic led0
);

    assign led0 = sw0 & sw1;

endmodule
