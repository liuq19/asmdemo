
// +build !noasm !appengine
// Code generated by asm2asm, DO NOT EDIT.

#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

TEXT ·__f32toa(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
_f32toa:
	MOVQ  out+0(FP), DI
	MOVSD val+8(FP), X1   // MOVSS is normal
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__f64toa(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
_f64toa:
	MOVQ  out+0(FP), DI
	MOVSD val+8(FP), X1
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__i32toa(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
_i32toa:
	MOVQ  out+0(FP), DI
	MOVQ  val+8(FP), SI  // MOVL is normal
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__i64toa(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
_i64toa:
	MOVQ  out+0(FP), DI
	MOVQ  val+8(FP), SI
	MOVQ  AX, ret+16(FP)
	RET
