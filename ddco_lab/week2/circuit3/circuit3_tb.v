module circuit3_tb;
reg A,B,C;
wire D;
circuit3 M1(A,B,C,D);
initial
begin
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
initial
begin
$dumpfile("circuit3.vcd");
$dumpvars(1,circuit3_tb);
end
endmodule
