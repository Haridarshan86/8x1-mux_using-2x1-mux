`timescale 1ns / 1ps

module mux8x1_tb;
reg i0, i1, i2, i3, i4, i5, i6, i7;
reg s0, s1, s2;
wire y;
integer i;
mux8x1 dut(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

initial begin

    // Fixed input 
    i0 = 0;
    i1 = 1;
    i2 = 0;
    i3 = 1;
    i4 = 0;
    i5 = 1;
    i6 = 0;
    i7 = 1;
$display("s2 s1 s0 | y");

    for(i = 0; i < 8; i = i + 1)
    begin
        {s2,s1,s0} = i;
        #10;
        $display("%b  %b  %b  | %b", s2,s1,s0,y);
    end
    $finish;
end

endmodule