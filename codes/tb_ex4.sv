module tb_ex4;
    logic clk, rst;
    logic [3:0] q;
    ex4 uut (clk, rst, q);

    initial begin
        clk = 0;
        rst = 1;
        
        #10 rst = 0;
        #200 rst = 1;
        #20 rst = 0;
        #50 $stop;
    end
    always begin
        #5 clk = ~clk;
    end    
endmodule