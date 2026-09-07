module seven_segment_decoder (
    input  logic sw0, sw1, sw2, sw3,
    output logic a, b, c, d, e, f, g
);
    logic seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;

    assign seg_a = (sw3|sw2|sw1|~sw0)&(sw3|~sw2|sw1|sw0);
    assign seg_b = (sw3|sw2|sw1|~sw0)&(sw3|sw2|~sw1|sw0)&(sw3|sw2|~sw1|~sw0)&(sw3|~sw2|~sw1|~sw0);
    assign seg_c = (sw3|~sw2|sw1|~sw0)&(sw3|~sw2|~sw1|sw0);
    assign seg_d = (sw3|sw2|sw1|sw0)&(sw3|sw2|sw1|~sw0)&(sw3|~sw2|~sw1|~sw0);
    assign seg_e = (~sw3&~sw2&~sw1&~sw0)|(~sw3&~sw2&sw1&~sw0)|(~sw3&sw2&sw1&~sw0)|(sw3&~sw2&~sw1&~sw0);
    assign seg_f = (sw3|sw2|~sw1|sw0);
    assign seg_g = (sw3|sw2|sw1|~sw0)&(sw3|~sw2|sw1|sw0)&(sw3|~sw2|~sw1|~sw0);

    assign {a, b, c, d, e, f, g} = ~{seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g};
endmodule