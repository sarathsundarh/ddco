module circuit3(A,B,C,D);
input A,B,C;
output D;
wire w1,w2,w3;
and G1(w1,C,B);
or G2(w2,A,w1);
and G3(w3,A,B);
or G4(D,w2,w3);
endmodule
