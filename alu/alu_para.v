// A simple ALU using parameter and case statements
module ALU4(out, a, b, op);
    input [1:0] op;
    input [7:0] a, b;
    output reg [7:0] out;

    parameter ADD=2'b00, SUB=2'b01, MUL=2'b10, DIV=2'b11;

    always @(*)
    begin
        case (op)
            ADD: out = a + b;
            SUB: out = a - b;
            MUL: out = a * b;
            DIV: out = a / b;
        endcase
    end
endmodule
