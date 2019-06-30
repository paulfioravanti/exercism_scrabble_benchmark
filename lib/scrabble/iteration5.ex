defmodule Scrabble.Iteration5 do
  @moduledoc "Function head refactor (codepoint list)"

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
    |> Enum.reduce(0, &add_score_for_letter/2)
  end

  defp add_score_for_letter(letter, acc) when letter in @one_point_letters,
    do: acc + 1

  defp add_score_for_letter(letter, acc) when letter in @two_point_letters,
    do: acc + 2

  defp add_score_for_letter(letter, acc) when letter in @three_point_letters,
    do: acc + 3

  defp add_score_for_letter(letter, acc) when letter in @four_point_letters,
    do: acc + 4

  defp add_score_for_letter(letter, acc) when letter in @five_point_letters,
    do: acc + 5

  defp add_score_for_letter(letter, acc) when letter in @eight_point_letters,
    do: acc + 8

  defp add_score_for_letter(letter, acc) when letter in @ten_point_letters,
    do: acc + 10

  defp add_score_for_letter(_letter, acc), do: acc
end
