# Proto test with Elixir



## Measurement Tool

I use [benchee](https://github.com/PragTob/benchee).

## Protobuf 2
```
$ mix run code/comparing_proto2.exs                                           afomin@MBP-AFOMIN
Operating System: macOS"
CPU Information: Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz
Number of Available Cores: 8
Available memory: 16 GB
Elixir 1.7.3
Erlang 21.1

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
memory time: 0 μs
parallel: 1
inputs: none specified
Estimated total run time: 24 s


Benchmarking Comparing ExProtobuf 2...
Benchmarking Comparing ProtoElixir 2...

Name                              ips        average  deviation         median         99th %
Comparing ProtoElixir 2       10.09 K       99.06 μs    ±16.73%          93 μs         157 μs
Comparing ExProtobuf 2         4.69 K      213.28 μs    ±24.14%         202 μs         364 μs

Comparison: 
Comparing ProtoElixir 2       10.09 K
Comparing ExProtobuf 2         4.69 K - 2.15x slower
```

## Protobuf 3
```
$ mix run code/comparing_proto3.exs                                           afomin@MBP-AFOMIN
Operating System: macOS"
CPU Information: Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz
Number of Available Cores: 8
Available memory: 16 GB
Elixir 1.7.3
Erlang 21.1

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
memory time: 0 μs
parallel: 1
inputs: none specified
Estimated total run time: 24 s


Benchmarking Comparing ExProtobuf 3...
Benchmarking Comparing ProtoElixir 3...

Name                              ips        average  deviation         median         99th %
Comparing ProtoElixir 3       10.28 K       97.26 μs    ±14.92%          93 μs         151 μs
Comparing ExProtobuf 3         3.80 K      263.13 μs    ±34.15%         235 μs         480 μs

Comparison: 
Comparing ProtoElixir 3       10.28 K
Comparing ExProtobuf 3         3.80 K - 2.71x slower
```

# Travis

You can also check benchmark info in Travis:

[![Bench Status](https://travis-ci.org/llxff/ex_proto_test.svg?branch=master)](https://travis-ci.org/llxff/ex_proto_test)
