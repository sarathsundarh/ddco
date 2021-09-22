module mux4(a,b,c,d,s1,s2,y);
input a,b,c,d,s1,s2;
output y;
wire w1,w2;
mux2 m1(a,b,s1,w1);
mux2 m2(c,d,s1,w2);
mux2 m3(w1,w2,s2,y);
endmodule
