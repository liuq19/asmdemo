package asmdemo

import (
	`testing`
)

func BenchmarkFoo_Float64(b *testing.B) {
	var f float64 = 1.0
    for i := 0; i < b.N; i++ { 
		__foo_f64(nil, f)
	}
}

func BenchmarkFoo_Float32(b *testing.B) {
	var f float32 = 1.0
    for i := 0; i < b.N; i++ { 
		__foo_f32(nil, f)
	}
}

func BenchmarkFoo_Int32(b *testing.B) {
	var f int32 = 1
    for i := 0; i < b.N; i++ { 
		__foo_i32(nil, f)
	}
}

func BenchmarkFoo_Int64(b *testing.B) {
	var f int64 = 1
    for i := 0; i < b.N; i++ { 
		__foo_i64(nil, f)
	}
}