//Original:/testcases/core/c_dsp32shift_ahalf_ln/c_dsp32shift_ahalf_ln.dsp
// Spec Reference: dsp32shift ashift
# mach: bfin

.include "testutils.inc"
	start




// Ashift : neg data, count (+)=left (half reg)
// d_lo = ashft (d_lo BY d_lo)
// RLx by RLx
imm32 r0, 0x00000000;
imm32 r1, 0x0000c001;
imm32 r2, 0x0000c002;
imm32 r3, 0x0000c003;
imm32 r4, 0x0000c004;
imm32 r5, 0x0000c005;
imm32 r6, 0x0000c006;
imm32 r7, 0x0000c007;
R0.L = ASHIFT R0.L BY R0.L;
R1.L = ASHIFT R1.L BY R0.L;
R2.L = ASHIFT R2.L BY R0.L;
R3.L = ASHIFT R3.L BY R0.L;
R4.L = ASHIFT R4.L BY R0.L;
R5.L = ASHIFT R5.L BY R0.L;
R6.L = ASHIFT R6.L BY R0.L;
R7.L = ASHIFT R7.L BY R0.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x0000c001;
CHECKREG r2, 0x0000c002;
CHECKREG r3, 0x0000c003;
CHECKREG r4, 0x0000c004;
CHECKREG r5, 0x0000c005;
CHECKREG r6, 0x0000c006;
CHECKREG r7, 0x0000c007;

imm32 r0, 0x00008001;
imm32 r1, 0x00000001;
imm32 r2, 0x0000d002;
imm32 r3, 0x0000e003;
imm32 r4, 0x0000f004;
imm32 r5, 0x0000c005;
imm32 r6, 0x0000d006;
imm32 r7, 0x0000e007;
R0.L = ASHIFT R0.L BY R1.L;
//rl1 = ashift (rl1 by rl1);
R2.L = ASHIFT R2.L BY R1.L;
R3.L = ASHIFT R3.L BY R1.L;
R4.L = ASHIFT R4.L BY R1.L;
R5.L = ASHIFT R5.L BY R1.L;
R6.L = ASHIFT R6.L BY R1.L;
R7.L = ASHIFT R7.L BY R1.L;
//CHECKREG r0, 0x00008002; /* why fail with real data R0 = 0x00000002 */
CHECKREG r1, 0x00000001;
CHECKREG r2, 0x0000a004;
CHECKREG r3, 0x0000c006;
CHECKREG r4, 0x0000e008;
CHECKREG r5, 0x0000800a;
CHECKREG r6, 0x0000a00c;
CHECKREG r7, 0x0000c00e;


imm32 r0, 0x0000c001;
imm32 r1, 0x0000d001;
imm32 r2, 0x0000000f;
imm32 r3, 0x0000e003;
imm32 r4, 0x0000f004;
imm32 r5, 0x0000f005;
imm32 r6, 0x0000f006;
imm32 r7, 0x0000f007;
R0.L = ASHIFT R0.L BY R2.L;
R1.L = ASHIFT R1.L BY R2.L;
//rl2 = ashift (rl2 by rl2);
R3.L = ASHIFT R3.L BY R2.L;
R4.L = ASHIFT R4.L BY R2.L;
R5.L = ASHIFT R5.L BY R2.L;
R6.L = ASHIFT R6.L BY R2.L;
R7.L = ASHIFT R7.L BY R2.L;
CHECKREG r0, 0x00008000;
CHECKREG r1, 0x00008000;
CHECKREG r2, 0x0000000f;
CHECKREG r3, 0x00008000;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0x00008000;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0x00008000;

imm32 r0, 0x00009001;
imm32 r1, 0x0000a001;
imm32 r2, 0x0000b002;
imm32 r3, 0x00000010;
imm32 r4, 0x0000c004;
imm32 r5, 0x0000d005;
imm32 r6, 0x0000e006;
imm32 r7, 0x0000f007;
R0.L = ASHIFT R0.L BY R3.L;
R1.L = ASHIFT R1.L BY R3.L;
R2.L = ASHIFT R2.L BY R3.L;
//rl3 = ashift (rl3 by rl3);
R4.L = ASHIFT R4.L BY R3.L;
R5.L = ASHIFT R5.L BY R3.L;
R6.L = ASHIFT R6.L BY R3.L;
R7.L = ASHIFT R7.L BY R3.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
CHECKREG r2, 0x00000000;
CHECKREG r3, 0x00000010;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0x00000000;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0x00000000;

// d_lo = ashft (d_hi BY d_lo)
// RHx by RLx
imm32 r0, 0x00000000;
imm32 r1, 0x00010000;
imm32 r2, 0x00020000;
imm32 r3, 0x00030000;
imm32 r4, 0x00040000;
imm32 r5, 0x00050000;
imm32 r6, 0x00060000;
imm32 r7, 0x00070000;
R0.L = ASHIFT R0.H BY R0.L;
R1.L = ASHIFT R1.H BY R0.L;
R2.L = ASHIFT R2.H BY R0.L;
R3.L = ASHIFT R3.H BY R0.L;
R4.L = ASHIFT R4.H BY R0.L;
R5.L = ASHIFT R5.H BY R0.L;
R6.L = ASHIFT R6.H BY R0.L;
R7.L = ASHIFT R7.H BY R0.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00010001;
CHECKREG r2, 0x00020002;
CHECKREG r3, 0x00030003;
CHECKREG r4, 0x00040004;
CHECKREG r5, 0x00050005;
CHECKREG r6, 0x00060006;
CHECKREG r7, 0x00070007;

imm32 r0, 0x90010000;
imm32 r1, 0x00010001;
imm32 r2, 0x90020000;
imm32 r3, 0x90030000;
imm32 r4, 0x90040000;
imm32 r5, 0x90050000;
imm32 r6, 0x90060000;
imm32 r7, 0x90070000;
R0.L = ASHIFT R0.H BY R1.L;
//rl1 = ashift (rh1 by rl1);
R2.L = ASHIFT R2.H BY R1.L;
R3.L = ASHIFT R3.H BY R1.L;
R4.L = ASHIFT R4.H BY R1.L;
R5.L = ASHIFT R5.H BY R1.L;
R6.L = ASHIFT R6.H BY R1.L;
R7.L = ASHIFT R7.H BY R1.L;
CHECKREG r0, 0x90012002;
CHECKREG r1, 0x00010001;
CHECKREG r2, 0x90022004;
CHECKREG r3, 0x90032006;
CHECKREG r4, 0x90042008;
CHECKREG r5, 0x9005200a;
CHECKREG r6, 0x9006200c;
CHECKREG r7, 0x9007200e;


imm32 r0, 0xa0010000;
imm32 r1, 0xa0010000;
imm32 r2, 0xa002000f;
imm32 r3, 0xa0030000;
imm32 r4, 0xa0040000;
imm32 r5, 0xa0050000;
imm32 r6, 0xa0060000;
imm32 r7, 0xa0070000;
R0.L = ASHIFT R0.H BY R2.L;
R1.L = ASHIFT R1.H BY R2.L;
//rl2 = ashift (rh2 by rl2);
R3.L = ASHIFT R3.H BY R2.L;
R4.L = ASHIFT R4.H BY R2.L;
R5.L = ASHIFT R5.H BY R2.L;
R6.L = ASHIFT R6.H BY R2.L;
R7.L = ASHIFT R7.H BY R2.L;
CHECKREG r0, 0xa0018000;
CHECKREG r1, 0xa0018000;
CHECKREG r2, 0xa002000f;
CHECKREG r3, 0xa0038000;
CHECKREG r4, 0xa0040000;
CHECKREG r5, 0xa0058000;
CHECKREG r6, 0xa0060000;
CHECKREG r7, 0xa0078000;

imm32 r0, 0xc0010001;
imm32 r1, 0xc0010001;
imm32 r2, 0xc0020002;
imm32 r3, 0xc0030010;
imm32 r4, 0xc0040004;
imm32 r5, 0xc0050005;
imm32 r6, 0xc0060006;
imm32 r7, 0xc0070007;
R0.L = ASHIFT R0.H BY R3.L;
R1.L = ASHIFT R1.H BY R3.L;
R2.L = ASHIFT R2.H BY R3.L;
//rl3 = ashift (rh3 by rl3);
R4.L = ASHIFT R4.H BY R3.L;
R5.L = ASHIFT R5.H BY R3.L;
R6.L = ASHIFT R6.H BY R3.L;
R7.L = ASHIFT R7.H BY R3.L;
CHECKREG r0, 0xc0010000;
CHECKREG r1, 0xc0010000;
CHECKREG r2, 0xc0020000;
CHECKREG r3, 0xc0030010;
CHECKREG r4, 0xc0040000;
CHECKREG r5, 0xc0050000;
CHECKREG r6, 0xc0060000;
CHECKREG r7, 0xc0070000;

// d_hi = ashft (d_lo BY d_lo)
// RLx by RLx
imm32 r0, 0x00000000;
imm32 r1, 0x00000001;
imm32 r2, 0x00000002;
imm32 r3, 0x00000003;
imm32 r4, 0x00000004;
imm32 r5, 0x00000005;
imm32 r6, 0x00000006;
imm32 r7, 0x00000007;
R0.H = ASHIFT R0.L BY R0.L;
R1.H = ASHIFT R1.L BY R0.L;
R2.H = ASHIFT R2.L BY R0.L;
R3.H = ASHIFT R3.L BY R0.L;
R4.H = ASHIFT R4.L BY R0.L;
R5.H = ASHIFT R5.L BY R0.L;
R6.H = ASHIFT R6.L BY R0.L;
R7.H = ASHIFT R7.L BY R0.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00010001;
CHECKREG r2, 0x00020002;
CHECKREG r3, 0x00030003;
CHECKREG r4, 0x00040004;
CHECKREG r5, 0x00050005;
CHECKREG r6, 0x00060006;
CHECKREG r7, 0x00070007;

imm32 r0, 0x0000d001;
imm32 r1, 0x00000001;
imm32 r2, 0x0000d002;
imm32 r3, 0x0000d003;
imm32 r4, 0x0000d004;
imm32 r5, 0x0000d005;
imm32 r6, 0x0000d006;
imm32 r7, 0x0000d007;
R0.H = ASHIFT R0.L BY R1.L;
R1.H = ASHIFT R1.L BY R1.L;
R2.H = ASHIFT R2.L BY R1.L;
R3.H = ASHIFT R3.L BY R1.L;
R4.H = ASHIFT R4.L BY R1.L;
R5.H = ASHIFT R5.L BY R1.L;
R6.H = ASHIFT R6.L BY R1.L;
R7.H = ASHIFT R7.L BY R1.L;
CHECKREG r0, 0xa002d001;
CHECKREG r1, 0x00020001;
CHECKREG r2, 0xa004d002;
CHECKREG r3, 0xa006d003;
CHECKREG r4, 0xa008d004;
CHECKREG r5, 0xa00ad005;
CHECKREG r6, 0xa00cd006;
CHECKREG r7, 0xa00ed007;


imm32 r0, 0x0000e001;
imm32 r1, 0x0000e001;
imm32 r2, 0x0000000f;
imm32 r3, 0x0000e003;
imm32 r4, 0x0000e004;
imm32 r5, 0x0000e005;
imm32 r6, 0x0000e006;
imm32 r7, 0x0000e007;
R0.H = ASHIFT R0.L BY R2.L;
R1.H = ASHIFT R1.L BY R2.L;
//rh2 = ashift (rl2 by rl2);
R3.H = ASHIFT R3.L BY R2.L;
R4.H = ASHIFT R4.L BY R2.L;
R5.H = ASHIFT R5.L BY R2.L;
R6.H = ASHIFT R6.L BY R2.L;
R7.H = ASHIFT R7.L BY R2.L;
CHECKREG r0, 0x8000e001;
CHECKREG r1, 0x8000e001;
CHECKREG r2, 0x0000000f;
CHECKREG r3, 0x8000e003;
CHECKREG r4, 0x0000e004;
CHECKREG r5, 0x8000e005;
CHECKREG r6, 0x0000e006;
CHECKREG r7, 0x8000e007;

imm32 r0, 0x0000f001;
imm32 r1, 0x0000f001;
imm32 r2, 0x0000f002;
imm32 r3, 0x00000010;
imm32 r4, 0x0000f004;
imm32 r5, 0x0000f005;
imm32 r6, 0x0000f006;
imm32 r7, 0x0000f007;
R0.H = ASHIFT R0.L BY R3.L;
R1.H = ASHIFT R1.L BY R3.L;
R2.H = ASHIFT R2.L BY R3.L;
R3.H = ASHIFT R3.L BY R3.L;
R4.H = ASHIFT R4.L BY R3.L;
R5.H = ASHIFT R5.L BY R3.L;
R6.H = ASHIFT R6.L BY R3.L;
R7.H = ASHIFT R7.L BY R3.L;
CHECKREG r0, 0x0000f001;
CHECKREG r1, 0x0000f001;
CHECKREG r2, 0x0000f002;
CHECKREG r3, 0x00000010;
CHECKREG r4, 0x0000f004;
CHECKREG r5, 0x0000f005;
CHECKREG r6, 0x0000f006;
CHECKREG r7, 0x0000f007;

// d_lo = ashft (d_hi BY d_lo)
// RHx by RLx
imm32 r0, 0x00000000;
imm32 r1, 0x00010000;
imm32 r2, 0x00020000;
imm32 r3, 0x00030000;
imm32 r4, 0x00040000;
imm32 r5, 0x00050000;
imm32 r6, 0x00060000;
imm32 r7, 0x00070000;
R0.H = ASHIFT R0.H BY R0.L;
R1.H = ASHIFT R1.H BY R0.L;
R2.H = ASHIFT R2.H BY R0.L;
R3.H = ASHIFT R3.H BY R0.L;
R4.H = ASHIFT R4.H BY R0.L;
R5.H = ASHIFT R5.H BY R0.L;
R6.H = ASHIFT R6.H BY R0.L;
R7.H = ASHIFT R7.H BY R0.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00010000;
CHECKREG r2, 0x00020000;
CHECKREG r3, 0x00030000;
CHECKREG r4, 0x00040000;
CHECKREG r5, 0x00050000;
CHECKREG r6, 0x00060000;
CHECKREG r7, 0x00070000;

imm32 r0, 0xa0010000;
imm32 r1, 0x00010001;
imm32 r2, 0xa0020000;
imm32 r3, 0xa0030000;
imm32 r4, 0xa0040000;
imm32 r5, 0xa0050000;
imm32 r6, 0xa0060000;
imm32 r7, 0xa0070000;
R0.H = ASHIFT R0.H BY R1.L;
R1.H = ASHIFT R1.H BY R1.L;
R2.H = ASHIFT R2.H BY R1.L;
R3.H = ASHIFT R3.H BY R1.L;
R4.H = ASHIFT R4.H BY R1.L;
R5.H = ASHIFT R5.H BY R1.L;
R6.H = ASHIFT R6.H BY R1.L;
R7.H = ASHIFT R7.H BY R1.L;
CHECKREG r0, 0x40020000;
CHECKREG r1, 0x00020001;
CHECKREG r2, 0x40040000;
CHECKREG r3, 0x40060000;
CHECKREG r4, 0x40080000;
CHECKREG r5, 0x400a0000;
CHECKREG r6, 0x400c0000;
CHECKREG r7, 0x400e0000;


imm32 r0, 0xb0010000;
imm32 r1, 0xb0010000;
imm32 r2, 0xb002000f;
imm32 r3, 0xb0030000;
imm32 r4, 0xb0040000;
imm32 r5, 0xb0050000;
imm32 r6, 0xb0060000;
imm32 r7, 0xb0070000;
R0.L = ASHIFT R0.H BY R2.L;
R1.L = ASHIFT R1.H BY R2.L;
//rl2 = ashift (rh2 by rl2);
R3.L = ASHIFT R3.H BY R2.L;
R4.L = ASHIFT R4.H BY R2.L;
R5.L = ASHIFT R5.H BY R2.L;
R6.L = ASHIFT R6.H BY R2.L;
R7.L = ASHIFT R7.H BY R2.L;
CHECKREG r0, 0xb0018000;
CHECKREG r1, 0xb0018000;
CHECKREG r2, 0xb002000f;
CHECKREG r3, 0xb0038000;
CHECKREG r4, 0xb0040000;
CHECKREG r5, 0xb0058000;
CHECKREG r6, 0xb0060000;
CHECKREG r7, 0xb0078000;

imm32 r0, 0xd0010000;
imm32 r1, 0xd0010000;
imm32 r2, 0xd0020000;
imm32 r3, 0xd0030010;
imm32 r4, 0xd0040000;
imm32 r5, 0xd0050000;
imm32 r6, 0xd0060000;
imm32 r7, 0xd0070000;
R0.H = ASHIFT R0.H BY R3.L;
R1.H = ASHIFT R1.H BY R3.L;
R2.H = ASHIFT R2.H BY R3.L;
R3.H = ASHIFT R3.H BY R3.L;
R4.H = ASHIFT R4.H BY R3.L;
R5.H = ASHIFT R5.H BY R3.L;
R6.H = ASHIFT R6.H BY R3.L;
R7.H = ASHIFT R7.H BY R3.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
CHECKREG r2, 0x00000000;
CHECKREG r3, 0x00000010;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0x00000000;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0x00000000;
pass