module tb_simple_circuit;
wire D,E;
reg A,B,C;
simple_circuit M1(A,B,C,D,E);
initial
begin
A=1'b0;B=1'b0;C=1'b0;
#1 A=1'b0;B=1'b0;C=1'b1;
#1 A=1'b0;B=1'b1;C=1'b0;
#1 A=1'b0;B=1'b1;C=1'b1;
#1 A=1'b1;B=1'b0;C=1'b0;
#1 A=1'b1;B=1'b0;C=1'b1;
#1 A=1'b1;B=1'b1;C=1'b0;
#1 A=1'b1;B=1'b1;C=1'b1;
#1;
end
initial
begin
$monitor($time," A=%b,B=%b,C=%b,D=%b,E=%b",A,B,C,D,E);
end
initial
begin
$dumpfile("simple.vcd");
$dumpvars(1,tb_simple_circuit);
end
endmodule
