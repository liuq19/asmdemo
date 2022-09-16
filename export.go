package asmdemo

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __f64(out *byte, val float64) (ret int)

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __i32(out *byte, val int32) (ret int)

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __f32(out *byte, val float32) (ret int)

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __i64(out *byte, val int64) (ret int)