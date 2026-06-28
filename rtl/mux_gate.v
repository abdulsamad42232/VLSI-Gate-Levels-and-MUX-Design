// 2:1 MUX using Gate-Level Primitives

module mux_gate (input a, b, sel, output out);
    wire not_sel, and1, and2;
    not g1 (not_sel, sel);
    and g2 (and1, a, not_sel);
    and g3 (and2, b, sel);
    or g4 (out, and1, and2);
endmodule
