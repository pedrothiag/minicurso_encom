module fsk (
    input logic clk, rst, x,
    output logic y
);
    logic [2:0] clk_div_1;
    logic [3:0] clk_div_0;
    logic clk_1, clk_0;

    //Dividir 10
    always_ff @(posedge clk, posedge rst) begin
        if(rst==1'b1) begin
            clk_div_1 = 3'd0;
            clk_1 = 1'b0;
        end else begin
            if(clk_div_1==3'd4) begin
                clk_1 = ~clk_1;
                clk_div_1 = 3'd0;
            end else begin
                clk_div_1 = clk_div_1 + 1;
            end
        end
    end

    //Dividir 20
    always_ff @(posedge clk, posedge rst) begin
        if(rst==1'b1) begin
            clk_div_0 = 4'd0;
            clk_0 = 1'b0;
        end else begin
            if(clk_div_0==4'd9) begin
                clk_0 = ~clk_0;
                clk_div_0 = 4'd0;
            end else begin
                clk_div_0 = clk_div_0 + 1;
            end
        end
    end

    assign y = (x==1'b0) ? clk_0 : clk_1;
endmodule