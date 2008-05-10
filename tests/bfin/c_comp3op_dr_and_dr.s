//Original:/testcases/core/c_comp3op_dr_and_dr/c_comp3op_dr_and_dr.dsp
// Spec Reference: comp3op dregs & dregs
# mach: bfin

.include "testutils.inc"
	start




imm32 r0, 0x01234567;
imm32 r1, 0x89abcdef;
imm32 r2, 0x56789abc;
imm32 r3, 0xdef01234;
imm32 r4, 0x23456899;
imm32 r5, 0x78912345;
imm32 r6, 0x98765432;
imm32 r7, 0x12345678;
R0 = R0 & R0;
R1 = R0 & R1;
R2 = R0 & R2;
R3 = R0 & R3;
R4 = R0 & R4;
R5 = R0 & R5;
R6 = R0 & R6;
R7 = R0 & R7;
CHECKREG r0, 0x01234567;
CHECKREG r1, 0x01234567;
CHECKREG r2, 0x00200024;
CHECKREG r3, 0x00200024;
CHECKREG r4, 0x01014001;
CHECKREG r5, 0x00010145;
CHECKREG r6, 0x00224422;
CHECKREG r7, 0x00204460;

imm32 r0, 0x01231567;
imm32 r1, 0x89ab1def;
imm32 r2, 0x56781abc;
imm32 r3, 0xdef01234;
imm32 r4, 0x23451899;
imm32 r5, 0x78911345;
imm32 r6, 0x98761432;
imm32 r7, 0x12341678;
R0 = R1 & R0;
R1 = R1 & R1;
R2 = R1 & R2;
R3 = R1 & R3;
R4 = R1 & R4;
R5 = R1 & R5;
R6 = R1 & R6;
R7 = R1 & R7;
CHECKREG r0, 0x01231567;
CHECKREG r1, 0x89AB1DEF;
CHECKREG r2, 0x002818AC;
CHECKREG r3, 0x88A01024;
CHECKREG r4, 0x01011889;
CHECKREG r5, 0x08811145;
CHECKREG r6, 0x88221422;
CHECKREG r7, 0x00201468;

imm32 r0, 0x01234527;
imm32 r1, 0x89abcd2f;
imm32 r2, 0x56789a2c;
imm32 r3, 0xdef01224;
imm32 r4, 0x23456829;
imm32 r5, 0x78912325;
imm32 r6, 0x98765422;
imm32 r7, 0x12345628;
R0 = R2 & R0;
R1 = R2 & R1;
R2 = R2 & R2;
R3 = R2 & R3;
R4 = R2 & R4;
R5 = R2 & R5;
R6 = R2 & R6;
R7 = R2 & R7;
CHECKREG r0, 0x00200024;
CHECKREG r1, 0x0028882C;
CHECKREG r2, 0x56789A2C;
CHECKREG r3, 0x56701224;
CHECKREG r4, 0x02400828;
CHECKREG r5, 0x50100224;
CHECKREG r6, 0x10701020;
CHECKREG r7, 0x12301228;

imm32 r0, 0x01234563;
imm32 r1, 0x89abcde3;
imm32 r2, 0x56789ab3;
imm32 r3, 0xdef01233;
imm32 r4, 0x23456893;
imm32 r5, 0x78912343;
imm32 r6, 0x98765433;
imm32 r7, 0x12345673;
R0 = R3 & R0;
R1 = R3 & R1;
R2 = R3 & R2;
R3 = R3 & R3;
R4 = R3 & R4;
R5 = R3 & R5;
R6 = R3 & R6;
R7 = R3 & R7;
CHECKREG r0, 0x00200023;
CHECKREG r1, 0x88A00023;
CHECKREG r2, 0x56701233;
CHECKREG r3, 0xDEF01233;
CHECKREG r4, 0x02400013;
CHECKREG r5, 0x58900203;
CHECKREG r6, 0x98701033;
CHECKREG r7, 0x12301233;

imm32 r0, 0x41234567;
imm32 r1, 0x49abcdef;
imm32 r2, 0x46789abc;
imm32 r3, 0x4ef01234;
imm32 r4, 0x43456899;
imm32 r5, 0x48912345;
imm32 r6, 0x48765432;
imm32 r7, 0x42345678;
R0 = R4 & R0;
R1 = R4 & R1;
R2 = R4 & R2;
R3 = R4 & R3;
R4 = R4 & R4;
R5 = R4 & R5;
R6 = R4 & R6;
R7 = R4 & R7;
CHECKREG r0, 0x41014001;
CHECKREG r1, 0x41014889;
CHECKREG r2, 0x42400898;
CHECKREG r3, 0x42400010;
CHECKREG r4, 0x43456899;
CHECKREG r5, 0x40012001;
CHECKREG r6, 0x40444010;
CHECKREG r7, 0x42044018;

imm32 r0, 0x05234567;
imm32 r1, 0x85abcdef;
imm32 r2, 0x55789abc;
imm32 r3, 0xd5f01234;
imm32 r4, 0x25456899;
imm32 r5, 0x75912345;
imm32 r6, 0x95765432;
imm32 r7, 0x15345678;
R0 = R5 & R0;
R1 = R5 & R1;
R2 = R5 & R2;
R3 = R5 & R3;
R4 = R5 & R4;
R5 = R5 & R5;
R6 = R5 & R6;
R7 = R5 & R7;
CHECKREG r0, 0x05010145;
CHECKREG r1, 0x05810145;
CHECKREG r2, 0x55100204;
CHECKREG r3, 0x55900204;
CHECKREG r4, 0x25012001;
CHECKREG r5, 0x75912345;
CHECKREG r6, 0x15100000;
CHECKREG r7, 0x15100240;

imm32 r0, 0x01264567;
imm32 r1, 0x89a6cdef;
imm32 r2, 0x56769abc;
imm32 r3, 0xdef61234;
imm32 r4, 0x23466899;
imm32 r5, 0x78962345;
imm32 r6, 0x98765432;
imm32 r7, 0x12365678;
R0 = R6 & R0;
R1 = R6 & R1;
R2 = R6 & R2;
R3 = R6 & R3;
R4 = R6 & R4;
R5 = R6 & R5;
R6 = R6 & R6;
R7 = R6 & R7;
CHECKREG r0, 0x00264422;
CHECKREG r1, 0x88264422;
CHECKREG r2, 0x10761030;
CHECKREG r3, 0x98761030;
CHECKREG r4, 0x00464010;
CHECKREG r5, 0x18160000;
CHECKREG r6, 0x98765432;
CHECKREG r7, 0x10365430;

imm32 r0, 0x01237567;
imm32 r1, 0x89ab7def;
imm32 r2, 0x56787abc;
imm32 r3, 0xdef07234;
imm32 r4, 0x23457899;
imm32 r5, 0x78917345;
imm32 r6, 0x98767432;
imm32 r7, 0x12345678;
R0 = R7 & R0;
R1 = R7 & R1;
R2 = R7 & R2;
R3 = R7 & R3;
R4 = R7 & R4;
R5 = R7 & R5;
R6 = R7 & R6;
R7 = R7 & R7;
CHECKREG r0, 0x00205460;
CHECKREG r1, 0x00205468;
CHECKREG r2, 0x12305238;
CHECKREG r3, 0x12305230;
CHECKREG r4, 0x02045018;
CHECKREG r5, 0x10105240;
CHECKREG r6, 0x10345430;
CHECKREG r7, 0x12345678;

imm32 r0, 0x11234567;
imm32 r1, 0x81abcdef;
imm32 r2, 0x56189abc;
imm32 r3, 0xdef11234;
imm32 r4, 0x23451899;
imm32 r5, 0x78912145;
imm32 r6, 0x98765412;
imm32 r7, 0x12345671;
R0 = R1 & R0;
R1 = R2 & R0;
R2 = R3 & R0;
R3 = R4 & R0;
R4 = R5 & R0;
R5 = R6 & R0;
R6 = R7 & R0;
R7 = R0 & R0;
CHECKREG r0, 0x01234567;
CHECKREG r1, 0x00000024;
CHECKREG r2, 0x00210024;
CHECKREG r3, 0x01010001;
CHECKREG r4, 0x00010145;
CHECKREG r5, 0x00224402;
CHECKREG r6, 0x00204461;
CHECKREG r7, 0x01234567;

imm32 r0, 0x01231567;
imm32 r1, 0x29ab1def;
imm32 r2, 0x52781abc;
imm32 r3, 0xde201234;
imm32 r4, 0x23421899;
imm32 r5, 0x78912345;
imm32 r6, 0x98761232;
imm32 r7, 0x12341628;
R0 = R2 & R1;
R1 = R3 & R1;
R2 = R4 & R1;
R3 = R5 & R1;
R4 = R6 & R1;
R5 = R7 & R1;
R6 = R0 & R1;
R7 = R1 & R1;
CHECKREG r0, 0x002818AC;
CHECKREG r1, 0x08201024;
CHECKREG r2, 0x00001000;
CHECKREG r3, 0x08000004;
CHECKREG r4, 0x08201020;
CHECKREG r5, 0x00201020;
CHECKREG r6, 0x00201024;
CHECKREG r7, 0x08201024;

imm32 r0, 0x03234527;
imm32 r1, 0x893bcd2f;
imm32 r2, 0x56739a2c;
imm32 r3, 0x3ef03224;
imm32 r4, 0x23456329;
imm32 r5, 0x78312335;
imm32 r6, 0x98735423;
imm32 r7, 0x12343628;
R0 = R4 & R2;
R1 = R5 & R2;
R2 = R6 & R2;
R3 = R7 & R2;
R4 = R0 & R2;
R5 = R1 & R2;
R6 = R2 & R2;
R7 = R3 & R2;
CHECKREG r0, 0x02410228;
CHECKREG r1, 0x50310224;
CHECKREG r2, 0x10731020;
CHECKREG r3, 0x10301020;
CHECKREG r4, 0x00410020;
CHECKREG r5, 0x10310020;
CHECKREG r6, 0x10731020;
CHECKREG r7, 0x10301020;

imm32 r0, 0x04234563;
imm32 r1, 0x894bcde3;
imm32 r2, 0x56749ab3;
imm32 r3, 0x4ef04233;
imm32 r4, 0x24456493;
imm32 r5, 0x78412344;
imm32 r6, 0x98745434;
imm32 r7, 0x12344673;
R0 = R5 & R3;
R1 = R6 & R3;
R2 = R7 & R3;
R3 = R0 & R3;
R4 = R1 & R3;
R5 = R2 & R3;
R6 = R3 & R3;
R7 = R4 & R3;
CHECKREG r0, 0x48400200;
CHECKREG r1, 0x08704030;
CHECKREG r2, 0x02304233;
CHECKREG r3, 0x48400200;
CHECKREG r4, 0x08400000;
CHECKREG r5, 0x00000200;
CHECKREG r6, 0x48400200;
CHECKREG r7, 0x08400000;

imm32 r0, 0x41235567;
imm32 r1, 0x49abc5ef;
imm32 r2, 0x46789a5c;
imm32 r3, 0x4ef01235;
imm32 r4, 0x53456899;
imm32 r5, 0x45912345;
imm32 r6, 0x48565432;
imm32 r7, 0x42355678;
R0 = R6 & R4;
R1 = R7 & R4;
R2 = R0 & R4;
R3 = R1 & R4;
R4 = R2 & R4;
R5 = R3 & R4;
R6 = R4 & R4;
R7 = R5 & R4;
CHECKREG r0, 0x40444010;
CHECKREG r1, 0x42054018;
CHECKREG r2, 0x40444010;
CHECKREG r3, 0x42054018;
CHECKREG r4, 0x40444010;
CHECKREG r5, 0x40044010;
CHECKREG r6, 0x40444010;
CHECKREG r7, 0x40044010;

imm32 r0, 0x05264567;
imm32 r1, 0x85ab6def;
imm32 r2, 0x657896bc;
imm32 r3, 0xd6f01264;
imm32 r4, 0x25656896;
imm32 r5, 0x75962345;
imm32 r6, 0x95766432;
imm32 r7, 0x15345678;
R0 = R7 & R5;
R1 = R0 & R5;
R2 = R1 & R5;
R3 = R2 & R5;
R4 = R3 & R5;
R5 = R4 & R5;
R6 = R5 & R5;
R7 = R6 & R5;
CHECKREG r0, 0x15140240;
CHECKREG r1, 0x15140240;
CHECKREG r2, 0x15140240;
CHECKREG r3, 0x15140240;
CHECKREG r4, 0x15140240;
CHECKREG r5, 0x15140240;
CHECKREG r6, 0x15140240;
CHECKREG r7, 0x15140240;

imm32 r0, 0x01764567;
imm32 r1, 0x89a7cdef;
imm32 r2, 0x56767abc;
imm32 r3, 0xdef61734;
imm32 r4, 0x73466879;
imm32 r5, 0x77962347;
imm32 r6, 0x98765432;
imm32 r7, 0x12375678;
R0 = R7 & R6;
R1 = R0 & R6;
R2 = R1 & R6;
R3 = R2 & R6;
R4 = R3 & R6;
R5 = R4 & R6;
R6 = R5 & R6;
R7 = R6 & R6;
CHECKREG r0, 0x10365430;
CHECKREG r1, 0x10365430;
CHECKREG r2, 0x10365430;
CHECKREG r3, 0x10365430;
CHECKREG r4, 0x10365430;
CHECKREG r5, 0x10365430;
CHECKREG r6, 0x10365430;
CHECKREG r7, 0x10365430;

imm32 r0, 0x81238567;
imm32 r1, 0x88ab78ef;
imm32 r2, 0x56887a8c;
imm32 r3, 0x8ef87238;
imm32 r4, 0x28458899;
imm32 r5, 0x78817845;
imm32 r6, 0x98787482;
imm32 r7, 0x12348678;
R0 = R1 & R7;
R1 = R2 & R7;
R2 = R3 & R7;
R3 = R4 & R7;
R4 = R5 & R7;
R5 = R6 & R7;
R6 = R7 & R7;
R7 = R0 & R7;
CHECKREG r0, 0x00200068;
CHECKREG r1, 0x12000208;
CHECKREG r2, 0x02300238;
CHECKREG r3, 0x00048018;
CHECKREG r4, 0x10000040;
CHECKREG r5, 0x10300400;
CHECKREG r6, 0x12348678;
CHECKREG r7, 0x00200068;


pass


