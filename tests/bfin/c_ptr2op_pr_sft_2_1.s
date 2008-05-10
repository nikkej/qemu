//Original:/proj/frio/dv/testcases/core/c_ptr2op_pr_sft_2_1/c_ptr2op_pr_sft_2_1.dsp
// Spec Reference:  ptr2op preg = preg << 2 (>>2, >> 1)
# mach: bfin

.include "testutils.inc"
	start
// check p-reg to p-reg move
	imm32 p1, 0xf0921203;
	imm32 p2, 0xbe041305;
	imm32 p3, 0xd0d61407;
	imm32 p4, 0xa00a1089;
	imm32 p5, 0x400a300b;
	imm32 sp, 0xe07c180d;
	imm32 fp, 0x206e109f;
	P1 = P1 << 2;
	P2 = P1 >> 2;
	P3 = P1 << 2;
	P4 = P1 >> 1;
	P5 = P1 >> 2;
	SP = P1 << 2;
	FP = P1 >> 1;
	CHECKREG p1, 0xC248480C;
	CHECKREG p2, 0x30921203;
	CHECKREG p3, 0x09212030;
	CHECKREG p4, 0x61242406;
	CHECKREG p5, 0x30921203;
	CHECKREG sp, 0x09212030;
	CHECKREG fp, 0x61242406;

	imm32 p1, 0x50021003;
	imm32 p2, 0x26041005;
	imm32 p3, 0x60761007;
	imm32 p4, 0x20081009;
	imm32 p5, 0xf00a900b;
	imm32 sp, 0xb00c1a0d;
	imm32 fp, 0x200e10bf;
	P1 = P2;
	P2 = P2;
	P3 = P2;
	P4 = P2;
	P5 = P2;
	SP = P2;
	FP = P2;
	CHECKREG p1, 0x26041005;
	CHECKREG p2, 0x26041005;
	CHECKREG p3, 0x26041005;
	CHECKREG p4, 0x26041005;
	CHECKREG p5, 0x26041005;
	CHECKREG sp, 0x26041005;
	CHECKREG fp, 0x26041005;

	imm32 p1, 0x20021003;
	imm32 p2, 0x20041005;
	imm32 p3, 0x20061007;
	imm32 p4, 0x20081009;
	imm32 p5, 0x200a100b;
	imm32 sp, 0x200c100d;
	imm32 fp, 0x200e100f;
	P1 = P3 << 2;
	P2 = P3 >> 1;
	P3 = P3 >> 2;
	P4 = P3 << 2;
	P5 = P3 << 2;
	SP = P3 >> 1;
	FP = P3 << 2;
	CHECKREG p1, 0x8018401C;
	CHECKREG p2, 0x10030803;
	CHECKREG p3, 0x08018401;
	CHECKREG p4, 0x20061004;
	CHECKREG p5, 0x20061004;
	CHECKREG sp, 0x0400C200;
	CHECKREG fp, 0x20061004;

	imm32 p1, 0xa0021003;
	imm32 p2, 0x2c041005;
	imm32 p3, 0x40b61007;
	imm32 p4, 0x250d1009;
	imm32 p5, 0x260ae00b;
	imm32 sp, 0x700c110d;
	imm32 fp, 0x900e104f;
	P1 = P4 >> 1;
	P2 = P4 << 2;
	P3 = P4 << 2;
	P4 = P4 >> 2;
	P5 = P4 << 2;
	SP = P4 >> 2;
	FP = P4 << 2;
	CHECKREG p1, 0x12868804;
	CHECKREG p2, 0x94344024;
	CHECKREG p3, 0x94344024;
	CHECKREG p4, 0x09434402;
	CHECKREG p5, 0x250D1008;
	CHECKREG sp, 0x0250D100;
	CHECKREG fp, 0x250D1008;

	imm32 p1, 0x10021003;
	imm32 p2, 0x22041005;
	imm32 p3, 0x20361007;
	imm32 p4, 0x20041009;
	imm32 p5, 0x200aa00b;
	imm32 sp, 0x200c1b0d;
	imm32 fp, 0x200e10cf;
	P1 = P5 << 2;
	P2 = P5 >> 2;
	P3 = P5 << 2;
	P4 = P5 << 2;
	P5 = P5 >> 1;
	SP = P5 >> 2;
	FP = P5 << 2;
	CHECKREG p1, 0x802A802C;
	CHECKREG p2, 0x0802A802;
	CHECKREG p3, 0x802A802C;
	CHECKREG p4, 0x802A802C;
	CHECKREG p5, 0x10055005;
	CHECKREG sp, 0x04015401;
	CHECKREG fp, 0x40154014;

	imm32 p1, 0x50021003;
	imm32 p2, 0x62041005;
	imm32 p3, 0x70e61007;
	imm32 p4, 0x290f1009;
	imm32 p5, 0x700ab00b;
	imm32 sp, 0x2a0c1d0d;
	imm32 fp, 0xb00e1e0f;
	P1 = SP << 2;
	P2 = SP << 2;
	P3 = SP >> 2;
	P4 = SP << 2;
	P5 = SP >> 2;
	SP = SP >> 1;
	FP = SP >> 2;
	CHECKREG p1, 0xA8307434;
	CHECKREG p2, 0xA8307434;
	CHECKREG p3, 0x0A830743;
	CHECKREG p4, 0xA8307434;
	CHECKREG p5, 0x0A830743;
	CHECKREG sp, 0x15060E86;
	CHECKREG fp, 0x054183A1;

	imm32 p1, 0x32002003;
	imm32 p2, 0x24004005;
	imm32 p3, 0x20506007;
	imm32 p4, 0x20068009;
	imm32 p5, 0x200ae00b;
	imm32 sp, 0x200c1f0d;
	imm32 fp, 0x200e10bf;
	P1 = FP >> 2;
	P2 = FP >> 1;
	P3 = FP << 2;
	P4 = FP >> 2;
	P5 = FP << 2;
	SP = FP >> 2;
	FP = FP << 2;
	CHECKREG p1, 0x0803842F;
	CHECKREG p2, 0x1007085F;
	CHECKREG p3, 0x803842FC;
	CHECKREG p4, 0x0803842F;
	CHECKREG p5, 0x803842FC;
	CHECKREG sp, 0x0803842F;
	CHECKREG fp, 0x803842FC;

	pass

