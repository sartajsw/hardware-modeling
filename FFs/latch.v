// Transparent Latch
module latch (q, qbar, din, enable);
    input din, enable;
    output q, qbar;
    reg q;

    assign qbar = ~q;

    always @(din oe enable)
    begin
        if (enable)
            q = din;
    end
endmodule
