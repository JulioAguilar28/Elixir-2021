defmodule Homework1 do
  def split_example do
    ["Julio", "Amir", "Erick", "Agus", "Peter", "Misa"]
    |> Enum.split(3)
  end

  def sort_by_example do
    "The list is sorted by even number first"

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    |> Enum.sort_by(fn x -> rem(x, 2) != 0 end)
  end

  def all_example do
    [20, 30, 40, 50, 60]
    |> Enum.all?(fn x -> x >= 20 and x <= 60 end)
  end

  def all_example2 do
    ["Julio", "Juan", "Javier", "Peter"]
    |> Enum.all?(fn name -> String.starts_with?(name, "J") end)
  end

  def zip_example do
    names = ["Julio", "Maria", "Maximo"]
    ages = [22, 22, 2]

    Enum.zip(names, ages)
  end

  def zip_example2 do
    names = ["Julio", "Maria", "Maximo"]
    ages = [22, 22, 2]
    category = [:human, :human, :dog]

    Enum.zip([names, ages, category])
  end

  def zip_with_example do
    Enum.zip_with(
      [["Julio"], ["Aguilar"], ["Montero"]],
      fn [x, y, z] ->
        x <> " " <> y <> " " <> z
      end
    )
  end

  def reversed_name(name) do
    String.reverse(name)
  end

  def reversed_names(names) do
    names
    |> Enum.map(fn name -> reversed_name(name) end)
  end
end
