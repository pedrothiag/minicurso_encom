module tb_ex3;
    logic [3:0] a, b;
    logic cin;
    logic [3:0] s;
    logic cout;

    ex3 uut (a, b, cin, s, cout);
    initial begin
        $monitor("a = %d \t b = %d \t cin = %b \t | \t s = %d \t cout = %b", a, b, cin, s, cout);
             a = 4'd5; b = 4'd4; cin = 1'b0;
        #10; a = 4'd5; b = 4'd4; cin = 1'b1;
        #10; a = 4'd3; b = 4'd9; cin = 1'b1;
        #10; a = 4'd3; b = 4'd9; cin = 1'b0;
        #10; a = 4'd8; b = 4'd9; cin = 1'b0;
        #10; $stop;
    end
endmodule