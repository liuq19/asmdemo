go test  -bench=. --count=10 > bench.txt
go get golang.org/x/perf/cmd/benchstat && go install golang.org/x/perf/cmd/benchstat
benchstat bench.txt 