# See LICENSE for license details.

#*****************************************************************************
# posits.S
#-----------------------------------------------------------------------------
#
# Test f{ma|da|ms|ds}.p instructions.
# Also involves fcvt.r.p, fcvr.p.r, fcvt.s.p, fcvt.p.s
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32UF
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  #               testnum  instr flags  result  val1   val2 inital-quire
  TEST_POSIT_QUIRE_S( 2,   fma.p,  0,    20.0,   2.5,   4.0,   0.0 );
  TEST_POSIT_QUIRE_S( 3,   fms.p,  0,     0.0,   2.5,   4.0,  20.0 );
  TEST_POSIT_QUIRE_S( 4,   fda.p,  0,     0.5,   1.0,   4.0,   0.0 );
  TEST_POSIT_QUIRE_S( 5,   fds.p,  0,     0.0,   1.0,   2.0,   1.0 );
  TEST_POSIT_LD_ST(   6,           0,            2.5               );

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
