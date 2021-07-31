defmodule SumList do
  @moduledoc """
  Exercício de uso de Recursão.
  """

  @doc """
  Itera numa lista de números usando recursão e retorna a soma dos elementos.

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
