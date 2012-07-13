/*
 * Blackfin helpers
 *
 * Copyright 2007-2014 Mike Frysinger
 * Copyright 2007-2011 Analog Devices, Inc.
 *
 * Licensed under the Lesser GPL 2 or later.
 */

#include "cpu.h"
#include "helper.h"

#if !defined(CONFIG_USER_ONLY)

#include "exec/softmmu_exec.h"
#define MMUSUFFIX _mmu
#define SHIFT 0
#include "exec/softmmu_template.h"
#define SHIFT 1
#include "exec/softmmu_template.h"
#define SHIFT 2
#include "exec/softmmu_template.h"
#define SHIFT 3
#include "exec/softmmu_template.h"

/* Try to fill the TLB and return an exception if error. If retaddr is
   NULL, it means that the function was called in C code (i.e. not
   from generated code or from helper.c) */
/* XXX: fix it to restore all registers */
void tlb_fill(CPUState *cs, target_ulong addr, int is_write, int mmu_idx,
              uintptr_t retaddr)
{
    int ret;

    ret = cpu_bfin_handle_mmu_fault(cs, addr, is_write, mmu_idx);
    if (unlikely(ret)) {
        if (retaddr) {
            /* now we have a real cpu fault */
            if (cpu_restore_state(cs, retaddr)) {
                /* XXX: something!? */
            }
        }
        cpu_loop_exit(cs);
    }
}

#endif

void HELPER(raise_exception)(CPUArchState *env, uint32_t excp, uint32_t pc)
{
    BlackfinCPU *cpu = bfin_env_get_cpu(env);
    CPUState *cs = CPU(cpu);

    cs->exception_index = excp;
    if (pc != -1)
        env->pc = pc;
    cpu_loop_exit(cs);
}

void HELPER(memalign)(CPUArchState *env, uint32_t excp, uint32_t pc,
                      uint32_t addr, uint32_t len)
{
    if ((addr & (len - 1)) == 0)
        return;

    HELPER(raise_exception)(env, excp, pc);
}

void HELPER(require_supervisor)(CPUArchState *env, uint32_t pc)
{
    if (!cec_is_supervisor_mode(env))
        HELPER(raise_exception)(env, EXCP_ILL_SUPV, pc);
}

void HELPER(dbga_l)(CPUArchState *env, uint32_t pc, uint32_t actual,
                    uint32_t expected)
{
    if ((actual & 0xffff) != expected)
        HELPER(raise_exception)(env, EXCP_DBGA, pc);
}

void HELPER(dbga_h)(CPUArchState *env, uint32_t pc, uint32_t actual,
                    uint32_t expected)
{
    if ((actual >> 16) != expected)
        HELPER(raise_exception)(env, EXCP_DBGA, pc);
}

void HELPER(outc)(uint32_t ch)
{
    putc(ch, stdout);
    if (ch == '\n')
        fflush(stdout);
}

void HELPER(dbg)(uint32_t val, uint32_t grp, uint32_t reg)
{
    printf("DBG : %s = 0x%08x\n", get_allreg_name(grp, reg), val);
}

void HELPER(dbg_areg)(uint64_t val, uint32_t areg)
{
    printf("DBG : A%u = 0x%010"PRIx64"\n", areg, (val << 24) >> 24);
}

uint32_t HELPER(astat_load)(CPUArchState *env)
{
    return bfin_astat_read(env);
}

void HELPER(astat_store)(CPUArchState *env, uint32_t astat)
{
    bfin_astat_write(env, astat);
}

/* Count the number of bits set to 1 in the 32bit value */
uint32_t HELPER(ones)(uint32_t val)
{
    uint32_t i;
    uint32_t ret;

    ret = 0;
    for (i = 0; i < 32; ++i)
        ret += !!(val & (1 << i));

    return ret;
}

/* Count number of leading bits that match the sign bit */
uint32_t HELPER(signbits)(uint32_t val, uint32_t size)
{
    uint32_t mask = 1 << (size - 1);
    uint32_t bit = val & mask;
    uint32_t count = 0;

    for (;;) {
        mask >>= 1;
        bit >>= 1;
        if (mask == 0)
            break;
        if ((val & mask) != bit)
            break;
        ++count;
    }

    return count;
}

/* Count number of leading bits that match the sign bit */
uint32_t HELPER(signbits_64)(uint64_t val, uint32_t size)
{
    uint64_t mask = (uint64_t)1 << (size - 1);
    uint64_t bit = val & mask;
    uint32_t count = 0;

    for (;;) {
        mask >>= 1;
        bit >>= 1;
        if (mask == 0)
            break;
        if ((val & mask) != bit)
            break;
        ++count;
    }

    if (size == 40)
        count -= 8;

    return count;
}

/* This is a bit crazy, but we want to simulate the hardware behavior exactly
   rather than worry about the circular buffers being used correctly.  Which
   isn't to say there isn't room for improvement here, just that we want to
   be conservative.  See also dagsub().  */
uint32_t HELPER(dagadd)(uint32_t I, uint32_t L, uint32_t B, uint32_t M)
{
    uint64_t i = I;
    uint64_t l = L;
    uint64_t b = B;
    uint64_t m = M;

    uint64_t LB, IM, IML;
    uint32_t im32, iml32, lb32, res;
    uint64_t msb, car;

    msb = (uint64_t)1 << 31;
    car = (uint64_t)1 << 32;

    IM = i + m;
    im32 = IM;
    LB = l + b;
    lb32 = LB;

    if ((int32_t)M < 0) {
        IML = i + m + l;
        iml32 = IML;
        if ((i & msb) || (IM & car))
            res = (im32 < b) ? iml32 : im32;
        else
            res = (im32 < b) ? im32 : iml32;
    } else {
        IML = i + m - l;
        iml32 = IML;
        if ((IM & car) == (LB & car))
            res = (im32 < lb32) ? im32 : iml32;
        else
            res = (im32 < lb32) ? iml32 : im32;
    }

    return res;
}

/* See dagadd() notes above.  */
uint32_t HELPER(dagsub)(uint32_t I, uint32_t L, uint32_t B, uint32_t M)
{
    uint64_t i = I;
    uint64_t l = L;
    uint64_t b = B;
    uint64_t m = M;

    uint64_t mbar = (uint32_t)(~m + 1);
    uint64_t LB, IM, IML;
    uint32_t b32, im32, iml32, lb32, res;
    uint64_t msb, car;

    msb = (uint64_t)1 << 31;
    car = (uint64_t)1 << 32;

    IM = i + mbar;
    im32 = IM;
    LB = l + b;
    lb32 = LB;

    if ((int32_t)M < 0) {
        IML = i + mbar - l;
        iml32 = IML;
        if (!!((i & msb) && (IM & car)) == !!(LB & car))
            res = (im32 < lb32) ? im32 : iml32;
        else
            res = (im32 < lb32) ? iml32 : im32;
    } else {
        IML = i + mbar + l;
        iml32 = IML;
        b32 = b;
        if (M == 0 || IM & car)
            res = (im32 < b32) ? iml32 : im32;
        else
            res = (im32 < b32) ? im32 : iml32;
    }

    return res;
}

uint32_t HELPER(add_brev)(uint32_t addend1, uint32_t addend2)
{
    uint32_t mask, b, r;
    int i, cy;

    mask = 0x80000000;
    r = 0;
    cy = 0;

    for (i = 31; i >= 0; --i) {
        b = ((addend1 & mask) >> i) + ((addend2 & mask) >> i);
        b += cy;
        cy = b >> 1;
        b &= 1;
        r |= b << i;
        mask >>= 1;
    }

    return r;
}
