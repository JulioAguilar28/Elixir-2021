defmodule Geometry do
  def area({:circle, r}) do
    {:ok, 3.14 * r * r}
  end

  def area({:rectangle, b, h}) do 
    {:ok, b * h}
  end

  def area(_) do
    {:error, "Error, Something went wrong"}
  end
end

defmodule Geometry2 do
  def area(:circle, r) do
    3.14 * r * r
  end

  def area(:rectangle, b, h) do
    b * h
  end
end
