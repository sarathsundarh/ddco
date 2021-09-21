module circuit4_tb;
reg A,B;
wire S,C;
circuit4 M1(A,B,S,C);
initial
begin
A=0;B=0;
#1 A=0;B=1;
#1 A=1;B=0;
#1 A=1;B=1;
#1;
end
initial
begin
$monitor($time," A=%b B=%b Sum=%b Carry=%b",A,B,S,C);
end
initial
begin
$dumpfile("circuit4.vcd");
$dumpvars(1,circuit4_tb);
end
endmodule
