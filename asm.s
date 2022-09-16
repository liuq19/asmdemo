
// +build !noasm !appengine

#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

TEXT ·__foo_f32(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
	MOVQ  out+0(FP), DI
	MOVSD val+8(FP), X1   // MOVSS is normal
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__foo_f64(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
	MOVQ  out+0(FP), DI
	MOVSD val+8(FP), X1
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__foo_i32(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
	MOVQ  out+0(FP), DI
	MOVQ  val+8(FP), SI  // MOVL is normal
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__foo_i64(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
	MOVQ  out+0(FP), DI
	MOVQ  val+8(FP), SI
	MOVQ  AX, ret+16(FP)
	RET
