module tb_ex6;
    logic x, clk, rst;
    logic y;

    ex6 uut (x, clk, rst, y);
    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        rst = 1;
        x = 1;

        #10 rst = 0;

        #50 x = 0;
        #30 x = 1;
        #100 x = 0;
        #10 rst = 1; x = 1;
        #50 $stop;
    end
endmodule