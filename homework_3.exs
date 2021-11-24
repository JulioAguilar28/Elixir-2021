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
