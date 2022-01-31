module tb_ALU;
    reg [15:0] X, Y;
    wire [15:0] Z;
    wire S, ZR, C, P, O;

    ALU DUT(X, Y, Z, S, ZR, C, P, O);

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_ALU);
        $monitor($time, " X=%h, Y=%h, Z=%h, S=%h, ZR=%h, C=%h, P=%h, O=%h", X, Y, Z, S, ZR, C, P, O);

        #5 X = 16'h8fff; Y = 16'h8000;
        #5 X = 16'hfffe; Y = 16'h0002;
        #5 X = 16'haaaa; Y = 16'h5555;
        #5 $finish;
    end
endmodule
