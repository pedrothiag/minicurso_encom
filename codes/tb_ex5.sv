module tb_ex5;
    logic [3:0] i0, i1, i2, i3, i4, i5, i6, i7;
    logic s2, s1, s0;
    logic [3:0] y;

    ex5 uut (i0, i1, i2, i3, i4, i5, i6, i7, s2, s1, s0, y);
    initial begin
        $monitor("s2 = %b  s1 = %b  s0 = %b  |  y = %d", s2, s1, s0, y);
        i0 = 1; i1 = 3; i2 = 5; i3 = 7; i4 = 9; i5 = 11; i6 = 13; i7 = 15;
             s2 = 0; s1 = 0; s0 = 0;
        #10 s2 = 0; s1 = 0; s0 = 1;
        #10 s2 = 0; s1 = 1; s0 = 0;
        #10 s2 = 0; s1 = 1; s0 = 1;
        #10 s2 = 1; s1 = 0; s0 = 0;
        #10 s2 = 1; s1 = 0; s0 = 1;
        #10 s2 = 1; s1 = 1; s0 = 0;
        #10 s2 = 1; s1 = 1; s0 = 1;
        #10 $stop;
    end
endmodule