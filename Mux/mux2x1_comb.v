// 2:1 Mux built with combinational logic
module mux2x1 (in1, in0, sel, out);
    input in1, in0, sel;
    output out;
    reg out;

    always @(in1 or in0 or sel)
    begin
        if (sel)
            f <= in1;
        else 
            f <= in0;
    end
endmodule
