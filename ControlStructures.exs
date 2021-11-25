defmodule IfModule do
  def max(a, b) do
    if a >= b do
      a
    else
      b
    end
  end
end

defmodule CondModule do
  cond do
    a >= b -> a
    true -> b
  end
end

defmodule CaseModule do
  expr = {:ok, "Hello World"}

  case expr do
    {:ok, result} -> result
    {:error} -> "UH! Someting went wrong"
  end
end
