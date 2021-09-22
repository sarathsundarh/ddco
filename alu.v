module fa(input wire i0,i1,cin,output wire sum,cout);
wire t0,t1,t2;
xor_i0(sum,i0,i1,cin);
and2_i1(t0,i0,i1);
and2_i2(t1,i1,cin);
and2_i3(t2,i0,cin);
or3_i4(cout,t0,t1,t2);
endmodule

module addsub(input wire addsub,i0,i1,cin,output wire sumdiff,cout);
wire t;
fa_io(sumdiff,cout,i0,t,cin);
xor2_i1(t,i1,addsub);
endmodule
module alu_slice(input wire[1:0]op,input wire i0,i1,cin,output wire o,cout);
wire t_sumdiff,t_and,t_or,t_andor;
addsub_i0(op[0],i0,i1,cin,t_sumdiff,cout);
and2_i1(t_and,i0,i1);
or2_i2(t_or,i0,i1);
mux2_i3(t_andor,t_and,t_or,op[0]);
mux2_i4(o,t_andor,t_sumdiff,op[1]);
endmodule

