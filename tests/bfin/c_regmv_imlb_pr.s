//Original:/proj/frio/dv/testcases/core/c_regmv_imlb_pr/c_regmv_imlb_pr.dsp
// Spec Reference: regmv imlb to dr
# mach: bfin

.include "testutils.inc"
	start

// initialize source regs
	imm32 i0, 0x11111111;
	imm32 i1, 0x22222222;
	imm32 i2, 0x33333333;
	imm32 i3, 0x44444444;

// i to preg
	R0 = I0;
	P1 = I0;
	P2 = I0;
	P3 = I0;
	P4 = I1;
	P5 = I1;
	SP = I1;
	FP = I1;
	CHECKREG r0, 0x11111111;
	CHECKREG p1, 0x11111111;
	CHECKREG p2, 0x11111111;
	CHECKREG p3, 0x11111111;
	CHECKREG p4, 0x22222222;
	CHECKREG p5, 0x22222222;
	CHECKREG sp, 0x22222222;
	CHECKREG fp, 0x22222222;

	R0 = I1;
	P1 = I1;
	P2 = I1;
	P3 = I1;
	P4 = I0;
	P5 = I0;
	SP = I0;
	FP = I0;
	CHECKREG r0, 0x22222222;
	CHECKREG p1, 0x22222222;
	CHECKREG p2, 0x22222222;
	CHECKREG p3, 0x22222222;
	CHECKREG p4, 0x11111111;
	CHECKREG p5, 0x11111111;
	CHECKREG sp, 0x11111111;
	CHECKREG fp, 0x11111111;

	R0 = I2;
	P1 = I2;
	P2 = I2;
	P3 = I2;
	P4 = I3;
	P5 = I3;
	SP = I3;
	FP = I3;
	CHECKREG r0, 0x33333333;
	CHECKREG p1, 0x33333333;
	CHECKREG p2, 0x33333333;
	CHECKREG p3, 0x33333333;
	CHECKREG p4, 0x44444444;
	CHECKREG p5, 0x44444444;
	CHECKREG sp, 0x44444444;
	CHECKREG fp, 0x44444444;

	R0 = I3;
	P1 = I3;
	P2 = I3;
	P3 = I3;
	P4 = I2;
	P5 = I2;
	SP = I2;
	FP = I2;
	CHECKREG r0, 0x44444444;
	CHECKREG p1, 0x44444444;
	CHECKREG p2, 0x44444444;
	CHECKREG p3, 0x44444444;
	CHECKREG p4, 0x33333333;
	CHECKREG p5, 0x33333333;
	CHECKREG sp, 0x33333333;
	CHECKREG fp, 0x33333333;

	imm32 m0, 0x55555555;
	imm32 m1, 0x66666666;
	imm32 m2, 0x77777777;
	imm32 m3, 0x88888888;
// m to preg
	R0 = M0;
	P1 = M0;
	P2 = M0;
	P3 = M0;
	P4 = M1;
	P5 = M1;
	SP = M1;
	FP = M1;
	CHECKREG r0, 0x55555555;
	CHECKREG p1, 0x55555555;
	CHECKREG p2, 0x55555555;
	CHECKREG p3, 0x55555555;
	CHECKREG p4, 0x66666666;
	CHECKREG p5, 0x66666666;
	CHECKREG sp, 0x66666666;
	CHECKREG fp, 0x66666666;

	R0 = M1;
	P1 = M1;
	P2 = M1;
	P3 = M1;
	P4 = M0;
	P5 = M0;
	SP = M0;
	FP = M0;
	CHECKREG r0, 0x66666666;
	CHECKREG p1, 0x66666666;
	CHECKREG p2, 0x66666666;
	CHECKREG p3, 0x66666666;
	CHECKREG p4, 0x55555555;
	CHECKREG p5, 0x55555555;
	CHECKREG sp, 0x55555555;
	CHECKREG fp, 0x55555555;

	R0 = M2;
	P1 = M2;
	P2 = M2;
	P3 = M2;
	P4 = M3;
	P5 = M3;
	SP = M3;
	FP = M3;
	CHECKREG r0, 0x77777777;
	CHECKREG p1, 0x77777777;
	CHECKREG p2, 0x77777777;
	CHECKREG p3, 0x77777777;
	CHECKREG p4, 0x88888888;
	CHECKREG p5, 0x88888888;
	CHECKREG sp, 0x88888888;
	CHECKREG fp, 0x88888888;

	R0 = M3;
	P1 = M3;
	P2 = M3;
	P3 = M3;
	P4 = M2;
	P5 = M2;
	SP = M2;
	FP = M2;
	CHECKREG r0, 0x88888888;
	CHECKREG p1, 0x88888888;
	CHECKREG p2, 0x88888888;
	CHECKREG p3, 0x88888888;
	CHECKREG p4, 0x77777777;
	CHECKREG p5, 0x77777777;
	CHECKREG sp, 0x77777777;
	CHECKREG fp, 0x77777777;

	imm32 l0, 0x99999999;
	imm32 l1, 0xaaaaaaaa;
	imm32 l2, 0xbbbbbbbb;
	imm32 l3, 0xcccccccc;
// l to preg
	R0 = L0;
	P1 = L0;
	P2 = L0;
	P3 = L0;
	P4 = L1;
	P5 = L1;
	SP = L1;
	FP = L1;
	CHECKREG r0, 0x99999999;
	CHECKREG p1, 0x99999999;
	CHECKREG p2, 0x99999999;
	CHECKREG p3, 0x99999999;
	CHECKREG p4, 0xaaaaaaaa;
	CHECKREG p5, 0xaaaaaaaa;
	CHECKREG sp, 0xaaaaaaaa;
	CHECKREG fp, 0xaaaaaaaa;

	R0 = L1;
	P1 = L1;
	P2 = L1;
	P3 = L1;
	P4 = L0;
	P5 = L0;
	SP = L0;
	FP = L0;
	CHECKREG r0, 0xaaaaaaaa;
	CHECKREG p1, 0xaaaaaaaa;
	CHECKREG p2, 0xaaaaaaaa;
	CHECKREG p3, 0xaaaaaaaa;
	CHECKREG p4, 0x99999999;
	CHECKREG p5, 0x99999999;
	CHECKREG sp, 0x99999999;
	CHECKREG fp, 0x99999999;

	R0 = L2;
	P1 = L2;
	P2 = L2;
	P3 = L2;
	P4 = L3;
	P5 = L3;
	SP = L3;
	FP = L3;
	CHECKREG r0, 0xbbbbbbbb;
	CHECKREG p1, 0xbbbbbbbb;
	CHECKREG p2, 0xbbbbbbbb;
	CHECKREG p3, 0xbbbbbbbb;
	CHECKREG p4, 0xcccccccc;
	CHECKREG p5, 0xcccccccc;
	CHECKREG sp, 0xcccccccc;
	CHECKREG fp, 0xcccccccc;

	R0 = L3;
	P1 = L3;
	P2 = L3;
	P3 = L3;
	P4 = L2;
	P5 = L2;
	SP = L2;
	FP = L2;
	CHECKREG r0, 0xcccccccc;
	CHECKREG p1, 0xcccccccc;
	CHECKREG p2, 0xcccccccc;
	CHECKREG p3, 0xcccccccc;
	CHECKREG p4, 0xbbbbbbbb;
	CHECKREG p5, 0xbbbbbbbb;
	CHECKREG sp, 0xbbbbbbbb;
	CHECKREG fp, 0xbbbbbbbb;

	imm32 b0, 0xdddddddd;
	imm32 b1, 0xeeeeeeee;
	imm32 b2, 0xffffffff;
	imm32 b3, 0x12345678;
// b to preg
	R0 = B0;
	P1 = B0;
	P2 = B0;
	P3 = B0;
	P4 = B1;
	P5 = B1;
	SP = B1;
	FP = B1;
	CHECKREG r0, 0xdddddddd;
	CHECKREG p1, 0xdddddddd;
	CHECKREG p2, 0xdddddddd;
	CHECKREG p3, 0xdddddddd;
	CHECKREG p4, 0xeeeeeeee;
	CHECKREG p5, 0xeeeeeeee;
	CHECKREG sp, 0xeeeeeeee;
	CHECKREG fp, 0xeeeeeeee;

	R0 = B1;
	P1 = B1;
	P2 = B1;
	P3 = B1;
	P4 = B0;
	P5 = B0;
	SP = B0;
	FP = B0;
	CHECKREG r0, 0xeeeeeeee;
	CHECKREG p1, 0xeeeeeeee;
	CHECKREG p2, 0xeeeeeeee;
	CHECKREG p3, 0xeeeeeeee;
	CHECKREG p4, 0xdddddddd;
	CHECKREG p5, 0xdddddddd;
	CHECKREG sp, 0xdddddddd;
	CHECKREG fp, 0xdddddddd;

	R0 = B2;
	P1 = B2;
	P2 = B2;
	P3 = B2;
	P4 = B3;
	P5 = B3;
	SP = B3;
	FP = B3;
	CHECKREG r0, 0xffffffff;
	CHECKREG p1, 0xffffffff;
	CHECKREG p2, 0xffffffff;
	CHECKREG p3, 0xffffffff;
	CHECKREG p4, 0x12345678;
	CHECKREG p5, 0x12345678;
	CHECKREG sp, 0x12345678;
	CHECKREG fp, 0x12345678;

	R0 = B3;
	P1 = B3;
	P2 = B3;
	P3 = B3;
	P4 = B2;
	P5 = B2;
	SP = B2;
	FP = B2;
	CHECKREG r0, 0x12345678;
	CHECKREG p1, 0x12345678;
	CHECKREG p2, 0x12345678;
	CHECKREG p3, 0x12345678;
	CHECKREG p4, 0xffffffff;
	CHECKREG p5, 0xffffffff;
	CHECKREG sp, 0xffffffff;
	CHECKREG fp, 0xffffffff;

	pass

