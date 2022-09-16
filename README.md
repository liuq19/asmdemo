
# 性能测试
./test.sh

# 测试结果

CPU `Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`

```
name            time/op
Foo_Float64-12  1.58ns ±11%
Foo_Float32-12  5.00ns ±13%
Foo_Int32-12    4.87ns ± 8%
Foo_Int64-12    1.89ns ±25%
```

不同的 MOV 指令导致性能差距巨大？

Foo_Int32 和 Foo_Int64 的实现如下：

```
func __foo_i32(out *byte, val int32) (ret int)
func __foo_i64(out *byte, val int64) (ret int)

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
```