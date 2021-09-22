module mux2_tb;
wire y;
reg a,b,s;
mux2 m1(a,b,s,y);
initial begin
s=0;a=0;b=0;
#5 s=0;a=0;b=1;
#5 s=0;a=1;b=0;
#5 s=0;a=1;b=1;
#5 s=1;a=0;b=0;
#5 s=1;a=0;b=1;
#5 s=1;a=1;b=0;
#5 s=1;a=1;b=1;
#5;
end
initial begin
$dumpfile("mux2.vcd");
$dumpvars(1,mux2_tb);
end
initial begin
$monitor($time,"\tA=%b B=%b Select=%b Output=%b",a,b,s,y);
end
endmodule
