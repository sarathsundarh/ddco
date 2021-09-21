module circuit2(A,B,C,D);
input A,B,C;
output D;
wire w1;
and G1(w1,C,B);
or (D,w1,A);
endmodule
