// 2:1 MUX using Procedural Blocks

module mux_behavioral (input a, b, sel, output reg out);
    always@(*) 
    begin
        if (sel)
            out = b;
        else
            out = a;
    end
endmodule