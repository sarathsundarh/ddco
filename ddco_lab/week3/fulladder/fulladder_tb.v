module fulladder_tb;
reg A,B,Ci;
wire S,Co;
fulladder M1(A,B,Ci,S,Co);
initial
begin
A=0;B=0;Ci=0;
#1 A=0;B=0;Ci=1;
#1 A=0;B=1;Ci=0;
#1 A=0;B=1;Ci=1;
#1 A=1;B=0;Ci=0;
#1 A=1;B=0;Ci=1;
#1 A=1;B=1;Ci=0;
#1 A=1;B=1;Ci=1;
#1;
end
initial
begin
$monitor($time," A=%b B=%b Carry in=%b Sum=%b Carry out=%b",A,B,Ci,S,Co);
end
initial
begin
$dumpfile("fulladder.vcd");
$dumpvars(1,fulladder_tb);
end
endmodule
