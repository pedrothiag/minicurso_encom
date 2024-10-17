module fsk_tb;
    logic clk, rst, x, y;
    fsk uut (.clk(clk), .rst(rst), .x(x), .y(y));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        x = 1'b0;

        #10 rst = 1'b0;

        #300 x = 1'b1;

        #300 x = 1'b0;

        #600 x = 1'b1;

        #300 $stop;
    end
    always begin
        #1 clk = ~clk;
    end    
endmodule