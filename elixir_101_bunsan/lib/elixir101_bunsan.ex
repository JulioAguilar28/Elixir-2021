defmodule Elixir101Bunsan do
  alias Elixir101Bunsan.WordCount

  @moduledoc """
  Documentation for `Elixir101Bunsan`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Elixir101Bunsan.hello()
      :world

  """
  def hello(who) do
    "Hello #{who}!!!"
  end

  def frequencies(path) do
    case File.read(path) do
      {:ok, content} -> WordCount.frequencies(content)
      {:error, reason} -> IO.puts('Something went wrong. Reason: #{reason}')
    end
  end
end
