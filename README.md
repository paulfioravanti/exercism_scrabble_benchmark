# Exercism: Elixir Scrabble Score Benchmark

These are my attempts to benchmark the iterations I went through when solving
the [Exercism Elixir Scrabble Score problem][] using [Benchee][].

## Install

```sh
git clone git@github.com:paulfioravanti/exercism_scrabble_benchmark.git
cd exercism_scrabble_benchmark
mix deps.get
```

## Run Benchmarks

Benchmark parameters can be changed in the `benchmarks/scrabble_benchmark.exs`
file. Configuration parameters and their meanings can be found in the
[Benchee README][bencheeorg/benchee#configuration].

```sh
mix run benchmarks/scrabble_benchmark.exs
```

[Benchee]: https://github.com/bencheeorg/benchee
[bencheeorg/benchee#configuration]: https://github.com/bencheeorg/benchee#configuration
[Exercism Elixir Scrabble Score problem]: https://exercism.io/tracks/elixir/exercises/scrabble-score
