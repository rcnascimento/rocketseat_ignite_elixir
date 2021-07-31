defmodule ListLength do
  @moduledoc """
  Desafio: Utilizando recursão
  """

  @doc """
  Dada uma lista qualquer, conta recursivamente quantos elementos ela possui e
  retorna esse valor.

  ## Exemplo

      iex> ListLength.call([1, 2, 3, 5, 7])
      5

  """
  def call(list) do
    lenght(list, 0)
  end

  defp lenght([], acc), do: acc

  defp lenght([_ | tail], acc) do
    acc = 1 + acc
    lenght(tail, acc)
  end
end
