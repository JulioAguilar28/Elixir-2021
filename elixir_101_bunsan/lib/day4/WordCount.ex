defmodule Elixir101Bunsan.WordCount do
  def frequencies(string) do
    string
    |> String.replace([",", "."], "")
    |> String.split()
    |> Enum.map(&delete_word_accent/1)
    |> Enum.reduce(%{}, fn s, acc ->
      Map.update(acc, s, 1, fn existing_value -> existing_value + 1 end)
    end)
  end

  defp delete_word_accent(word) do
    word
    |> String.normalize(:nfd)
    |> String.codepoints()
    |> List.delete("\u0301")
    |> Enum.join()
    |> String.downcase()
  end
end
