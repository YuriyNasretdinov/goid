#include "textflag.h"
#include "go_asm.h"

// func GoID() int64
TEXT ·GoID(SB),NOSPLIT,$0-8
	get_tls(CX)
	MOVQ	g(CX), BX
	MOVQ	g_goid(BX), CX
	MOVQ	CX, ret+0(FP)
	RET

