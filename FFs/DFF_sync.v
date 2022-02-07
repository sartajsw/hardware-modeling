// D Flip flop w/ syncronous set and reset
// Positve edge triggered clock and negative edge triggered set & reset
module dff (q, qbar, din, set, reset, clk);
    input din, set, reset, clk;
    output q, qbar;
    reg q;

    assign qbar = ~q;

    always @(posedge clk)
    begin
        if (reset == 0)
            q <= 0;
        else if (set == 0)
            q <= 1;
        else 
            q <= din;
    end
endmodule
