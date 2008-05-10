//Original:/proj/frio/dv/testcases/core/c_dsp32shift_rot_mix/c_dsp32shift_rot_mix.dsp
// Spec Reference: dsp32shift rot
# mach: bfin

.include "testutils.inc"
	start

	R0 = 0;
	ASTAT = R0;


	imm32 r0, 0x01230000;
	imm32 r1, 0x12345678;
	imm32 r2, 0x83456789;
	imm32 r3, 0x9456789a;
	imm32 r4, 0xa56789ab;
	imm32 r5, 0xb6789abc;
	imm32 r6, 0xc789abcd;
	imm32 r7, 0xd89abcde;
	R1 = ROT R0 BY R0.L;
	R2 = ROT R1 BY R0.L;
	R3 = ROT R2 BY R0.L;
	R4 = ROT R3 BY R0.L;
	R5 = ROT R4 BY R0.L;
	R6 = ROT R5 BY R0.L;
	R7 = ROT R6 BY R0.L;
	R0 = ROT R7 BY R0.L;
	CHECKREG r0, 0x01230000;
	CHECKREG r1, 0x01230000;
	CHECKREG r2, 0x01230000;
	CHECKREG r3, 0x01230000;
	CHECKREG r4, 0x01230000;
	CHECKREG r5, 0x01230000;
	CHECKREG r6, 0x01230000;
	CHECKREG r7, 0x01230000;

	imm32 r0, 0x11230001;
	imm32 r1, 0xc2345678;
	imm32 r2, 0xd3456789;
	imm32 r3, 0xb456789a;
	imm32 r4, 0x056789ab;
	imm32 r5, 0x36789abc;
	imm32 r6, 0x1789abcd;
	imm32 r7, 0x189abcde;
	R1.L = 5;
	R2 = ROT R0 BY R1.L;
	R3 = ROT R1 BY R1.L;
	R4 = ROT R2 BY R1.L;
	R5 = ROT R3 BY R1.L;
	R6 = ROT R4 BY R1.L;
	R7 = ROT R5 BY R1.L;
	R0 = ROT R6 BY R1.L;
	R1 = ROT R7 BY R1.L;
	CHECKREG r0, 0x00108908;
	CHECKREG r1, 0x005613A0;
	CHECKREG r2, 0x24600021;
	CHECKREG r3, 0x468000AC;
	CHECKREG r4, 0x8C000422;
	CHECKREG r5, 0xD0001584;
	CHECKREG r6, 0x80008448;
	CHECKREG r7, 0x0002B09D;

	imm32 r0, 0x01230002;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x8456789a;
	imm32 r4, 0x956789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0xc789abcd;
	imm32 r7, 0x789abcde;
	R2 = 15;
	R3 = ROT R0 BY R2.L;
	R4 = ROT R1 BY R2.L;
	R5 = ROT R2 BY R2.L;
	R6 = ROT R3 BY R2.L;
	R7 = ROT R4 BY R2.L;
	R0 = ROT R5 BY R2.L;
	R1 = ROT R6 BY R2.L;
	R2 = ROT R7 BY R2.L;
	CHECKREG r0, 0xC0000001;
	CHECKREG r1, 0x10006009;
	CHECKREG r2, 0x45678891;
	CHECKREG r3, 0x80010048;
	CHECKREG r4, 0x2B3C448D;
	CHECKREG r5, 0x00078000;
	CHECKREG r6, 0x80242000;
	CHECKREG r7, 0x22468ACF;

	imm32 r0, 0x21230003;
	imm32 r1, 0x22345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x2456789a;
	imm32 r4, 0x256789ab;
	imm32 r5, 0x26789abc;
	imm32 r6, 0x2789abcd;
	imm32 r7, 0x289abcde;
	R3.L = 24;
	R4 = ROT R0 BY R3.L;
	R5 = ROT R1 BY R3.L;
	R6 = ROT R2 BY R3.L;
	R7 = ROT R3 BY R3.L;
	R0 = ROT R4 BY R3.L;
	R1 = ROT R5 BY R3.L;
	R2 = ROT R6 BY R3.L;
	R3 = ROT R7 BY R3.L;
	CHECKREG r0, 0x8001C848;
	CHECKREG r1, 0x2BBC088D;
	CHECKREG r2, 0xB34488D1;
	CHECKREG r3, 0x000C4915;
	CHECKREG r4, 0x03909180;
	CHECKREG r5, 0x78111A2B;
	CHECKREG r6, 0x8911A2B3;
	CHECKREG r7, 0x18922B00;

	imm32 r0, 0x01230004;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R4.L = -1;
	R0 = ROT R0 BY R4.L;
	R1 = ROT R1 BY R4.L;
	R2 = ROT R2 BY R4.L;
	R3 = ROT R3 BY R4.L;
	R4 = ROT R4 BY R4.L;
	R5 = ROT R5 BY R4.L;
	R6 = ROT R6 BY R4.L;
	R7 = ROT R7 BY R4.L;
	CHECKREG r0, 0x80918002;
	CHECKREG r1, 0x091A2B3C;
	CHECKREG r2, 0x11A2B3C4;
	CHECKREG r3, 0x9A2B3C4D;
	CHECKREG r4, 0x22B3FFFF;
	CHECKREG r5, 0xAB3C4D5E;
	CHECKREG r6, 0x33C4D5E6;
	CHECKREG r7, 0xBC4D5E6F;

	imm32 r0, 0x01230005;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R5.L = -6;
	R6 = ROT R0 BY R5.L;
	R7 = ROT R1 BY R5.L;
	R0 = ROT R2 BY R5.L;
	R1 = ROT R3 BY R5.L;
	R2 = ROT R4 BY R5.L;
	R3 = ROT R5 BY R5.L;
	R4 = ROT R6 BY R5.L;
	R5 = ROT R7 BY R5.L;
	CHECKREG r0, 0x4C8D159E;
	CHECKREG r1, 0xD0D159E2;
	CHECKREG r2, 0x59159E26;
	CHECKREG r3, 0xD559E3FF;
	CHECKREG r4, 0x04A01230;
	CHECKREG r5, 0xCB012345;
	CHECKREG r6, 0x28048C00;
	CHECKREG r7, 0xC048D159;

	imm32 r0, 0x01230006;
	imm32 r1, 0x82345678;
	imm32 r2, 0x73456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0xd56789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0xc789abcd;
	imm32 r7, 0x789abcde;
	R6.L = -15;
	R7 = ROT R0 BY R6.L;
	R0 = ROT R1 BY R6.L;
	R1 = ROT R2 BY R6.L;
	R2 = ROT R3 BY R6.L;
	R3 = ROT R4 BY R6.L;
	R4 = ROT R5 BY R6.L;
	R5 = ROT R6 BY R6.L;
	R6 = ROT R7 BY R6.L;
	CHECKREG r0, 0x59E10468;
	CHECKREG r1, 0x9E26E68A;
	CHECKREG r2, 0xE26A68AC;
	CHECKREG r3, 0x26AFAACF;
	CHECKREG r4, 0x6AF0ACF1;
	CHECKREG r5, 0xFFC58F13;
	CHECKREG r6, 0x091A0030;
	CHECKREG r7, 0x00180246;

	imm32 r0, 0x01230007;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R7.L = -27;
	R0 = ROT R0 BY R7.L;
	R1 = ROT R1 BY R7.L;
	R2 = ROT R2 BY R7.L;
	R3 = ROT R3 BY R7.L;
	R4 = ROT R4 BY R7.L;
	R5 = ROT R5 BY R7.L;
	R6 = ROT R6 BY R7.L;
	R7 = ROT R7 BY R7.L;
	CHECKREG r0, 0x48C001C0;
	CHECKREG r1, 0x8D159E02;
	CHECKREG r2, 0xD159E244;
	CHECKREG r3, 0x159E2686;
	CHECKREG r4, 0x59E26AE8;
	CHECKREG r5, 0x9E26AF2A;
	CHECKREG r6, 0xE26AF36C;
	CHECKREG r7, 0x26BFF96F;

	imm32 r0, 0x01230008;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R0.L = 7;
//r0  = rot   (r0 by rl0);
	R1 = ROT R1 BY R0.L;
	R2 = ROT R2 BY R0.L;
	R3 = ROT R3 BY R0.L;
	R4 = ROT R4 BY R0.L;
	R5 = ROT R5 BY R0.L;
	R6 = ROT R6 BY R0.L;
	R7 = ROT R7 BY R0.L;
	CHECKREG r0, 0x01230007;
	CHECKREG r1, 0x1A2B3C04;
	CHECKREG r2, 0xA2B3C4C8;
	CHECKREG r3, 0x2B3C4D4D;
	CHECKREG r4, 0xB3C4D591;
	CHECKREG r5, 0x3C4D5E15;
	CHECKREG r6, 0xC4D5E6D9;
	CHECKREG r7, 0x4D5E6F5E;

	imm32 r0, 0x01230009;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R1.L = 16;
	R0 = ROT R0 BY R1.L;
//r1  = rot   (r1 by rl1);
	R2 = ROT R2 BY R1.L;
	R3 = ROT R3 BY R1.L;
	R4 = ROT R4 BY R1.L;
	R5 = ROT R5 BY R1.L;
	R6 = ROT R6 BY R1.L;
	R7 = ROT R7 BY R1.L;
	CHECKREG r0, 0x00090091;
	CHECKREG r1, 0x12340010;
	CHECKREG r2, 0x678991A2;
	CHECKREG r3, 0x789A9A2B;
	CHECKREG r4, 0x89AB22B3;
	CHECKREG r5, 0x9ABCAB3C;
	CHECKREG r6, 0xABCD33C4;
	CHECKREG r7, 0xBCDEBC4D;

	imm32 r0, 0x0123000a;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R2.L = 31;
	R0 = ROT R0 BY R2.L;
	R1 = ROT R1 BY R2.L;
//r2  = rot   (r2 by rl2);
	R3 = ROT R3 BY R2.L;
	R4 = ROT R4 BY R2.L;
	R5 = ROT R5 BY R2.L;
	R6 = ROT R6 BY R2.L;
	R7 = ROT R7 BY R2.L;
	CHECKREG r0, 0x0048C002;
	CHECKREG r1, 0x448D159E;
	CHECKREG r2, 0x2345001F;
	CHECKREG r3, 0x0D159E26;
	CHECKREG r4, 0xD159E26A;
	CHECKREG r5, 0x559E26AF;
	CHECKREG r6, 0x99E26AF3;
	CHECKREG r7, 0x1E26AF37;

	imm32 r0, 0x0123000c;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R4.L = -2;
	R0 = ROT R0 BY R4.L;
	R1 = ROT R1 BY R4.L;
	R2 = ROT R2 BY R4.L;
	R3 = ROT R3 BY R4.L;
//r4  = rot   (r4 by rl4);
	R5 = ROT R5 BY R4.L;
	R6 = ROT R6 BY R4.L;
	R7 = ROT R7 BY R4.L;
	CHECKREG r0, 0x4048C003;
	CHECKREG r1, 0x048D159E;
	CHECKREG r2, 0x88D159E2;
	CHECKREG r3, 0x0D159E26;
	CHECKREG r4, 0x4567FFFE;
	CHECKREG r5, 0x559E26AF;
	CHECKREG r6, 0x99E26AF3;
	CHECKREG r7, 0x1E26AF37;

	imm32 r0, 0x0123000d;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R5.L = -14;
	R0 = ROT R0 BY R5.L;
	R1 = ROT R1 BY R5.L;
	R2 = ROT R2 BY R5.L;
	R3 = ROT R3 BY R5.L;
	R4 = ROT R4 BY R5.L;
//r5  = rot   (r5 by rl5);
	R6 = ROT R6 BY R5.L;
	R7 = ROT R7 BY R5.L;
	CHECKREG r0, 0x006C048C;
	CHECKREG r1, 0xB3C048D1;
	CHECKREG r2, 0x3C488D15;
	CHECKREG r3, 0xC4D4D159;
	CHECKREG r4, 0x4D5D159E;
	CHECKREG r5, 0x5678FFF2;
	CHECKREG r6, 0x5E699E26;
	CHECKREG r7, 0xE6F5E26A;

	imm32 r0, 0x0123000e;
	imm32 r1, 0x12345678;
	imm32 r2, 0x23456789;
	imm32 r3, 0x3456789a;
	imm32 r4, 0x456789ab;
	imm32 r5, 0x56789abc;
	imm32 r6, 0x6789abcd;
	imm32 r7, 0x789abcde;
	R6.L = -16;
	R0 = ROT R0 BY R6.L;
	R1 = ROT R1 BY R6.L;
	R2 = ROT R2 BY R6.L;
	R3 = ROT R3 BY R6.L;
	R4 = ROT R4 BY R6.L;
	R5 = ROT R5 BY R6.L;
//r6  = rot   (r6 by rl6);
	R7 = ROT R7 BY R6.L;
	CHECKREG r0, 0x001D0123;
	CHECKREG r1, 0xACF01234;
	CHECKREG r2, 0xCF122345;
	CHECKREG r3, 0xF1343456;
	CHECKREG r4, 0x13564567;
	CHECKREG r5, 0x35795678;
	CHECKREG r6, 0x6789FFF0;
	CHECKREG r7, 0x79BD789A;

	pass