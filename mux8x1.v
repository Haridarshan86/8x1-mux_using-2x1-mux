module mux8x1(input i0,input i1,input i2,input i3, input i4,input i5,input i6,input i7,input s0,input s1,input s2,output y);

wire w1, w2, w3, w4;
wire w5, w6;

// Level 1
mux2x1 M1(i0, i1, s0, w1);
mux2x1 M2(i2, i3, s0, w2);
mux2x1 M3(i4, i5, s0, w3);
mux2x1 M4(i6, i7, s0, w4);

// Level 2
mux2x1 M5(w1, w2, s1, w5);
mux2x1 M6(w3, w4, s1, w6);

// Level 3
mux2x1 M7(w5, w6, s2, y);
endmodule