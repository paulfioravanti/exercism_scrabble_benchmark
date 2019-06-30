Benchee.run(
  %{
    "First attempt (string map)" => fn input ->
      Scrabble.Iteration1.score(input)
    end,
    "Stream refactor (string map)" => fn input ->
      Scrabble.Iteration2.score(input)
    end,
    "Reduce refactor (codepoint map)" => fn input ->
      Scrabble.Iteration3.score(input)
    end,
    "case refactor (codepoint list)" => fn input ->
      Scrabble.Iteration4.score(input)
    end,
    "function head refactor (codepoint list)" => fn input ->
      Scrabble.Iteration5.score(input)
    end,
    "guard refactor (codepoint list)" => fn input ->
      Scrabble.Iteration6.score(input)
    end
  },
  # These inputs closely match the values used in the exercise tests.
  inputs: %{
    "empty" => "",
    "whitespace" => " \t\n",
    "very short word" => "a",
    "simple word" => "street",
    "complex word score" => "quirky",
    "uppercase word" => "OXYPHENBUTAZONE",
    "entire alphabet" => "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  },
  warmup: 4,
  time: 5,
  memory_time: 2,
  print: [
    benchmarking: true,
    configuration: true,
    fast_warning: true
  ],
  formatters: [
    # NOTE: HTML formatter disabled by default here due to what seem like
    # rendering issues. More info at:
    # https://github.com/bencheeorg/benchee_html/issues/3
    # Benchee.Formatters.HTML,
    Benchee.Formatters.Console
  ],
  unit_scaling: :best
)
