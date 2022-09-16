package asmdemo

import (
	`testing`
)

func BenchmarkFloat64(b *testing.B) {
	var f float64 = 1.0
    for i := 0; i < b.N; i++ { 
		__f64toa(nil, f)
	}
}

func BenchmarkFloat32(b *testing.B) {
	var f float32 = 1.0
    for i := 0; i < b.N; i++ { 
		__f32toa(nil, f)
	}
}

func BenchmarkInt32(b *testing.B) {
	var f int32 = 1
    for i := 0; i < b.N; i++ { 
		__i32toa(nil, f)
	}
}

func BenchmarkInt64(b *testing.B) {
	var f int64 = 1
    for i := 0; i < b.N; i++ { 
		__i64toa(nil, f)
	}
}