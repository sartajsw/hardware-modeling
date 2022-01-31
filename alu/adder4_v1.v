module ADDER_4 (Sum, Carry, IN1, IN2, Cin);
    input [3:0] IN1, IN2;
    input Cin;
    output [3:0] Sum;
    output Carry;

    assign {Carry, Sum} = IN1 + IN2 + Cin;
endmodule
