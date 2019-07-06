# Exercism: Elixir Scrabble Score Benchmark

These are my attempts to benchmark the iterations I went through when solving
the [Exercism Elixir Scrabble Score problem][] using [Benchee][].

It is the companion repository to
[a lightning talk][exercism_elixir_scrabble_score] ([slides][]) I did for the
[Elixir Sydney July 2019 meetup][].

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
[Elixir Sydney July 2019 meetup]: https://www.meetup.com/elixir-sydney/events/qfdzcryzkbfb/
[Exercism Elixir Scrabble Score problem]: https://exercism.io/tracks/elixir/exercises/scrabble-score
[exercism_elixir_scrabble_score]: https://github.com/paulfioravanti/presentations/tree/master/exercism_elixir_scrabble_score
[slides]: https://speakerdeck.com/paulfioravanti/exercism-scrabble-score-elixir
