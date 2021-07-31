defmodule SumList do
  @moduledoc """
  Documentation for `SumList`.
  """

  @doc """
  Hello world.

  ## Exemplo

      iex> SumList.call([1, 2, 3])
      6

  """
  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = head + acc
    sum(tail, acc)
  end
end
