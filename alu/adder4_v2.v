module ADDER_4 (Sum, Carry, IN1, IN2, Cin);
    input [3:0] IN1, IN2;
    input Cin;
    output [3:0] Sum;
    output Carry;

    wire t1, t2, t3;

    FULLADDER fa0(Sum[0], t1, IN1[0], IN2[0], Cin);
    FULLADDER fa1(Sum[1], t2, IN1[1], IN2[1], t1);
    FULLADDER fa2(Sum[2], t3, IN1[2], IN2[2], t2);
    FULLADDER fa3(Sum[3], Carry, IN1[3], IN2[3], t3);

endmodule
