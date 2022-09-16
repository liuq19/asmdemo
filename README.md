
# 性能测试
./test.sh

# 测试结果

CPU `Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`

```
Float64-12  1.59ns ± 6%
Float32-12  4.60ns ± 8%
Int32-12    4.33ns ± 1%
Int64-12    1.52ns ± 1%
```

不同的 MOV 指令导致性能差距巨大？

```
func __i32(out *byte, val int32) (ret int)
func __i64(out *byte, val int64) (ret int)

TEXT ·__i32(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
	MOVQ  out+0(FP), DI
	MOVQ  val+8(FP), SI  // 使用 MOVL 后性能恢复正常
	MOVQ  AX, ret+16(FP)
	RET

TEXT ·__i64(SB), NOSPLIT | NOFRAME, $0 - 24
	NO_LOCAL_POINTERS
	MOVQ  out+0(FP), DI
	MOVQ  val+8(FP), SI
	MOVQ  AX, ret+16(FP)
	RET
```