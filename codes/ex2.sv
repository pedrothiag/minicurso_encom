module ex2 (
    input logic [3:0] a, b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
);
    logic [4:0] temp;
    assign temp = a + b + cin;
    assign cout = temp[4];
    assign s = temp[3:0];
endmodule