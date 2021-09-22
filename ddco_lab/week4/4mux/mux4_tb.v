module mux4_tb;
wire y;
reg a,b,c,d,s1,s2;
mux4 m1(a,b,c,d,s1,s2,y);
initial begin
s2=0;s1=0;a=0;b=0;c=0;d=0;
#5 s2=0;s1=0;a=1;b=0;c=0;d=0;
#5 s2=0;s1=1;a=0;b=0;c=0;d=0;
#5 s2=0;s1=1;a=0;b=1;c=0;d=0;
#5 s2=1;s1=0;a=0;b=0;c=0;d=0;
#5 s2=1;s1=0;a=0;b=0;c=1;d=0;
#5 s2=1;s1=1;a=0;b=0;c=0;d=0;
#5 s2=1;s1=1;a=0;b=0;c=0;d=1;
#5;
end
initial begin
$dumpfile("mux4.vcd");
$dumpvars(1,mux4_tb);
end
initial begin
$monitor($time,"\tA=%b B=%b C=%b D=%b S1=%b S2=%b Output=%b",a,b,c,d,s1,s2,y);
end
endmodule
