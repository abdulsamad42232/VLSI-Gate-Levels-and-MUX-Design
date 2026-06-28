// 2:1 MUX using Continuous Assignment

module mux_dataflow (input a , b, sel, output out);
    assign out = (sel)? b: a;
endmodule