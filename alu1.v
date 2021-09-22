module alu (input wire [1:0]op, input wire[15:0] io,i1,output wire[15:0] o, put[ut wire cout);
//declare wires here
wire [14:0]c;
alu_slice_i0(op,i0[0],i1[0],op[0],o[0],c[0]);
alu_slice_i1(op,i0[1],i1[1],op[1],o[1],c[1]);
alu_slice_i2(op,i0[2],i1[2],op[2],o[2],c[2]);
alu_slice_i3(op,i0[3],i1[3],op[3],o[3],c[3]);
alu_slice_i4(op,i0[4],i1[4],op[4],o[4],c[4]);
alu_slice_i5(op,i0[5],i1[5],op[5],o[5],c[5]);
alu_slice_i6(op,i0[6],i1[6],op[6],o[6],c[6]);
alu_slice_i7(op,i0[7],i1[7],op[7],o[7],c[7]);
alu_slice_i8(op,i0[8],i1[8],op[8],o[8],c[8]);
alu_slice_i9(op,i0[9],i1[9],op[9],o[9],c[9]);
alu_slice_i10(op,i0[10],i1[10],op[10],o[10],c[10]);
alu_slice_i11(op,i0[11],i1[11],op[11],o[11],c[11]);
alu_slice_i12(op,i0[12],i1[12],op[12],o[12],c[12]);
alu_slice_i13(op,i0[13],i1[13],op[13],o[13],c[13]);
alu_slice_i14(op,i0[14],i1[14],op[14],o[14],c[14]);
alu_slice_i15(op,i0[15],i1[15],op[15],o[15],c[15]);
endmodule
