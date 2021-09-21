module circuit2_tb;
wire D;
reg A,B,C;
circuit2 M1(A,B,C,D);
initial
begin
$dumpfile("circuit2.vcd");
$dumpvars(1,circuit2_tb);

A=0;B=0;C=0;
#1 A=0;B=0;C=1;
#1 A=0;B=1;C=0;
#1 A=0;B=1;C=1;
#1 A=1;B=0;C=0;
#1 A=1;B=0;C=1;
#1 A=1;B=1;C=0;
#1 A=1;B=1;C=1;
#1;
end
initial
begin
$monitor($time," A=%b B=%b C=%b D=%b",A,B,C,D);
end
endmodule
