defmodule Scrabble.Iteration4 do
  @moduledoc "case refactor (codepoint list)"

  @one_point_letters 'aeioulnrst'
  @two_point_letters 'dg'
  @three_point_letters 'bcmp'
  @four_point_letters 'fhvwy'
  @five_point_letters 'k'
  @eight_point_letters 'jx'
  @ten_point_letters 'qz'

  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t()) :: non_neg_integer
  def score(word) do
    word
    |> String.downcase()
    |> String.to_charlist()
    |> Enum.reduce(0, &add_score/2)
  end

  defp add_score(char, acc) do
    case char do
      char when char in @one_point_letters ->
        acc + 1

      char when char in @two_point_letters ->
        acc + 2

      char when char in @three_point_letters ->
        acc + 3

      char when char in @four_point_letters ->
        acc + 4

      char when char in @five_point_letters ->
        acc + 5

      char when char in @eight_point_letters ->
        acc + 8

      char when char in @ten_point_letters ->
        acc + 10

      _ ->
        acc
    end
  end
end
