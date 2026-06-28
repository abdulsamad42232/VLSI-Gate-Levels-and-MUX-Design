`timescale 1ns / 1ps

module tb_basic_gates;

    // 1. Declare Inputs (reg) and Outputs (wire)
    reg t_a;
    reg t_b;
    
    wire t_and;
    wire t_or;
    wire t_xor;
    wire t_nand;
    wire t_nor;
    wire t_xnor;

    // 2. Instantiate the Design Under Test (DUT)
    basic_gates uut_gates (
        .a(t_a),
        .b(t_b),
        .out_and(t_and),
        .out_or(t_or),
        .out_xor(t_xor),
        .out_nand(t_nand),
        .out_nor(t_nor),
        .out_xnor(t_xnor)
    );

    // 3. Apply Stimulus
    initial begin
        // Print header for the transcript console
        $display("=========================================================");
        $display("Time\tA B | AND\tOR\tXOR\tNAND\tNOR\tXNOR");
        $display("=========================================================");
        
        // Automatically print values whenever a signal changes
        $monitor("%0tns\t%b %b |  %b\t%b\t%b\t%b\t%b\t%b", 
                 $time, t_a, t_b, t_and, t_or, t_xor, t_nand, t_nor, t_xnor);

        // Test Vector 1
        t_a = 0; t_b = 0; #10;
        // Test Vector 2
        t_a = 0; t_b = 1; #10;
        // Test Vector 3
        t_a = 1; t_b = 0; #10;
        // Test Vector 4
        t_a = 1; t_b = 1; #10;

        $display("=========================================================");
        $display("Basic Gates Simulation Complete.");
        $stop;
    end

endmodule