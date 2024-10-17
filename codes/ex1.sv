module ex1 (
    input logic x, y, z,
    output logic F1, F2
);
    assign F1 = x | (~y & z);
    assign F2 = x&(~y) | (~x)&z;
endmodule