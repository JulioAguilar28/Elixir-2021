# Escribir un módulo con una función que reciba un texto (un string de palabras separadas por espacios)
# y regrese un mapa con la frecuencia de las palabras contenidas en dicho texto.

# Ejemplo

# MyModule.frequencies("a los bunsancitos les gusta programar con otros bunsancitos y jugar con mas bunsancitos y con sus mascotas")
# %{
#   "a" => 1,
#   "bunsancitos" => 3
#   "con" => 3,
#   "gusta" => 1,
#   "jugar" => 1,
#   "les" => 1,
#   "los" => 1,
#   "mas" => 1,
#   "mascotas" => 1,
#   "otros" => 1,
#   "programar" => 1,
#   "sus" => 1,
#   "y" => 2
# }

# Solución Julio

defmodule Homework3 do
  def frequencies(string) do
    string
    |> String.split()
    |> Enum.reduce(%{}, fn s, acc -> update_map(acc, s) end)
  end

  defp update_map(map, key) do
    case Map.fetch(map, key) do
      {:ok, current_value} -> add_one(map, key, current_value)
      :error -> add_first(map, key)
    end
  end

  defp add_one(map, key, current_value), do: %{map | key => current_value + 1}

  defp add_first(map, key), do: Map.put(map, key, 1)
end

# Solución Gustavo

defmodule TareaTres do
  def countElem(map, valor) do
    Enum.count(map, fn x -> x == valor end)
  end

  def frecuenciasFuncion(cadena, fun) do
    enumerable = String.split(cadena)

    enumerable
    |> Enum.reduce(%{}, fn x, acc -> Map.put(acc, x, fun.(enumerable, x)) end)
  end

  def frecuencias(cadena) do
    enumerable = String.split(cadena)

    enumerable
    |> Enum.reduce(%{}, fn x, acc -> Map.put(acc, x, countElem(enumerable, x)) end)
  end
end

cadena =
  "a los bunsancitos les gusta programar con otros bunsancitos y jugar con mas bunsancitos y con sus mascotas"

TareaTres.countElem(String.split(cadena), "y")

TareaTres.frecuencias(cadena)

TareaTres.frecuenciasFuncion(cadena, &TareaTres.countElem/2)
