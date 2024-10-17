module ex4 (
    input logic clk, rst,
    output logic [3:0] q
);
    always_ff @(posedge clk, posedge rst) begin
        if(rst==1) q = 0;
        else q = q + 1;
    end
endmodule