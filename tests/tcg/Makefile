# -*- Mode: makefile -*-
#
# TCG tests
#
# These are complicated by the fact we want to build them for guest
# systems. This requires knowing what guests we are building and which
# ones we have cross-compilers for or docker images with
# cross-compilers.
#
# The tests themselves should be as minimal as possible as
# cross-compilers don't always have a large amount of libraries
# available.
#
# We only include the host build system for SRC_PATH and we don't
# bother with the common rules.mk. We expect the following:
#
#   CC - the C compiler command
#   EXTRA_CFLAGS - any extra CFLAGS
#   BUILD_STATIC - are we building static binaries
#
# By default all tests are statically compiled but some host systems
# may not package static libraries by default. If an external
# cross-compiler can only build dynamic libraries the user might need
# to make extra efforts to ensure ld.so can link at runtime when the
# tests are run.
#
# We also accept SPEED=slow to enable slower running tests
#
# We also expect to be in the tests build dir for the FOO-linux-user.
#

-include ../../config-host.mak
-include ../config-target.mak

quiet-command = $(if $(V),$1,$(if $(2),@printf "  %-7s %s\n" $2 $3 && $1, @$1))

# $1 = test name, $2 = cmd, $3 = desc
run-test = $(call quiet-command, timeout $(TIMEOUT) $2 > $1.out,"TEST",$3)

# $1 = test name, $2 = reference
diff-out = $(call quiet-command, diff -u $1.out $2 | head -n 10,"DIFF","$1.out with $2")

# $1 = test name, $2 = reason
skip-test = @printf "  SKIPPED %s on $(TARGET_NAME) because %s\n" $1 $2

# Tests we are building
TESTS=

# Start with a blank slate, the build targets get to add stuff first
CFLAGS=
QEMU_CFLAGS=
LDFLAGS=

# The QEMU for this TARGET
QEMU=../qemu-$(TARGET_NAME)

# If TCG debugging is enabled things are a lot slower
ifeq ($(CONFIG_DEBUG_TCG),y)
TIMEOUT=45
else
TIMEOUT=15
endif

# The order we include is important. We include multiarch, base arch
# and finally arch if it's not the same as base arch.
-include $(SRC_PATH)/tests/tcg/multiarch/Makefile.target
-include $(SRC_PATH)/tests/tcg/$(TARGET_BASE_ARCH)/Makefile.target
ifneq ($(TARGET_BASE_ARCH),$(TARGET_NAME))
-include $(SRC_PATH)/tests/tcg/$(TARGET_NAME)/Makefile.target
endif

# Add the common build options
CFLAGS+=-Wall -O0 -g -fno-strict-aliasing
ifeq ($(BUILD_STATIC),y)
LDFLAGS+=-static
endif

%: %.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $< -o $@ $(LDFLAGS)

all: $(TESTS)

#
# Test Runners
#
# By default we just run the test with the appropriate QEMU for the
# target. More advanced tests may want to override the runner in their
# specific make rules. Additional runners for the same binary should
# be added to EXTRA_RUNS.
#

RUN_TESTS=$(patsubst %,run-%, $(TESTS))
RUN_TESTS+=$(EXTRA_RUNS)

run-%: %
	$(call run-test, $<, $(QEMU) $<, "$< on $(TARGET_NAME)")

.PHONY: run
run: $(RUN_TESTS)

# testsuite for the Blackfin port.
test-bfin:
	$(MAKE) -C bfin check

# There is no clean target, the calling make just rm's the tests build dir
