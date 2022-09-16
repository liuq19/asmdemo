package asmdemo

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __f64toa(out *byte, val float64) (ret int)

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __i32toa(out *byte, val int32) (ret int)

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __f32toa(out *byte, val float32) (ret int)

//go:nosplit
//go:noescape
//goland:noinspection GoUnusedParameter
func __i64toa(out *byte, val int64) (ret int)