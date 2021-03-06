defmodule LinesCounter do

  def count(path) do
    File.read(path)
    |> lines_num
  end

  defp lines_num({:ok, contents}) do
    contents
    |> String.split("\n")
    |> length 
  end

  defp lines_num({:error, reason}) do
    IO.puts("There is an error -> #{reason}")

    reason
  end
end
