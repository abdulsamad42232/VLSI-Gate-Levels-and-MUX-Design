`timescale 1ns / 1ps

module tb_mux;

    // 1. Declare Shared Inputs (reg)
    reg t_a;
    reg t_b;
    reg t_sel;

    // 2. Declare Separate Outputs for each MUX architecture (wire)
    wire out_beh;
    wire out_df;
    wire out_gate;

    // 3. Instantiate ALL THREE Designs Under Test (DUTs)

    // Instantiate Behavioral MUX
    mux_behavioral uut_beh (
        .a(t_a),
        .b(t_b),
        .sel(t_sel),
        .out(out_beh)
    );

    // Instantiate Dataflow MUX
    mux_dataflow uut_df (
        .a(t_a),
        .b(t_b),
        .sel(t_sel),
        .out(out_df)
    );

    // Instantiate Gate-Level MUX
    mux_gate uut_gate (
        .a(t_a),
        .b(t_b),
        .sel(t_sel),
        .out(out_gate)
    );

    // 4. Apply Stimulus
    initial begin
        // Print header for the transcript console
        $display("======================================================");
        $display("Time\tsel a b | Beh_Out  Data_Out  Gate_Out");
        $display("======================================================");
        
        // Monitor will show all three outputs side-by-side to prove they match
        $monitor("%0tns\t %b  %b %b |    %b         %b         %b", 
                 $time, t_sel, t_a, t_b, out_beh, out_df, out_gate);

        // --- Testing sel = 0 (Should pass input 'a' to output) ---
        t_sel = 0; t_a = 0; t_b = 0; #10;
        t_sel = 0; t_a = 0; t_b = 1; #10;
        t_sel = 0; t_a = 1; t_b = 0; #10;
        t_sel = 0; t_a = 1; t_b = 1; #10;

        // --- Testing sel = 1 (Should pass input 'b' to output) ---
        t_sel = 1; t_a = 0; t_b = 0; #10;
        t_sel = 1; t_a = 0; t_b = 1; #10;
        t_sel = 1; t_a = 1; t_b = 0; #10;
        t_sel = 1; t_a = 1; t_b = 1; #10;

        $display("======================================================");
        $display("Multiplexer Equivalence Simulation Complete.");
        $stop;
    end

endmodule