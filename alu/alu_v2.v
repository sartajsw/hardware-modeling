module ALU (X, Y, Z, Sign, Zero, Carry, Parity, Overflow);
    input [15:0] X, Y;
    output [15:0] Z;
    output Sign, Zero, Carry, Parity, Overflow;

    wire C[2:0];

    ADDER_4 add0(Z[3:0], C[0], X[3:0], Y[3:0], 1'b0);
    ADDER_4 add1(Z[7:4], C[1], X[7:4], Y[7:4], C[0]);
    ADDER_4 add2(Z[11:8], C[2], X[11:8], Y[11:8], C[1]);
    ADDER_4 add3(Z[15:12], Carry, X[15:12], Y[15:12], C[2]);

    assign Sign = Z[15];
    assign Zero = ~|Z;
    assign Parity = ~^Z;
    assign Overflow = ((X[15] & Y[15] & ~Z[15]) | (~X[15] & ~Y[15] & Z[15]));
endmodule
