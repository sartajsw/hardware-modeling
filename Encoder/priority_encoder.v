// 8 bit Priority Encoder w/ casex
module priority_encoder (out, in);
    input [7:0] in;
    output reg [2:0] out;

    always @(in)
    begin
        casex:
            8'bxxxxxxx1: out = 3'b000;
            8'bxxxxxx1x: out = 3'b001;
            8'bxxxxx1xx: out = 3'b010;
            8'bxxxx1xxx: out = 3'b011;
            8'bxxx1xxxx: out = 3'b100;
            8'bxx1xxxxx: out = 3'b101;
            8'bx1xxxxxx: out = 3'b110;
            8'b1xxxxxxx: out = 3'b111;
            default: out = 3'b000;
        endcase
    end
endmodule
