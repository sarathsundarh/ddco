`timescale 1ns/100ps
`define testvecs 5
module rca_tb;
reg clk, reset;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
reg [4:0] test_vecs[(`testvecs-1):0];
integer i;
initial
begin
$dumpfile("rca_tb.vcd");
$dumpvars(1,rca_tb);
end
initial
begin
reset = 1'b1;
#12.5 reset = 1'b0;
end
initial clk = 1'b0;
always #5 clk=~clk;
initial
begin
test_vecs[0] = 9'b 000000000;
test_vecs[1] = 9'b 001010001;
test_vecs[2] = 9'b 000010000;
test_vecs[3] = 9'b 000111001;
test_vecs[4] = 9'b 011011111;
end
initial {i,a,b,cin} = 0;
rca u0(a,b,cin,sum,cout);
initial begin #6
for(i=0;i<`testvecs;i=i+1)
	begin #10{a[i],b[i],cin} = test_vecs[i];
end #100 $finish;
end
always@(a or b or cin);
endmodule
