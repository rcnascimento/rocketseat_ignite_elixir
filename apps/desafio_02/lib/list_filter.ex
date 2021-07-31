defmodule ListFilter do
  @moduledoc """
  Desafio: Filtragem em listas
  """

  @doc """
  Dada uma lista de strings dentre palavras e numerais, filtra todos os elementos numéricos e retorna quantos ímpares existem.

  ## Exemplo

      iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      3

  """
  def call(list), do: filter_and_count_odd_numbers(list)

  defp filter_and_count_odd_numbers(list) do
    numerical_values_as_integer(list)
    |> Enum.count(fn el -> rem(el, 2) != 0 end)
  end

  defp numerical_values_as_integer(list) do
    remove_not_numerical(list)
    # Transforma as strings numéricas em valores inteiros.
    |> Enum.map(fn el -> String.to_integer(el) end)
  end

  defp remove_not_numerical(list) do
    # Remove strings que não podem ser convertidas em inteiro.
    Enum.filter(list, fn el -> Integer.parse(el) != :error end)
  end
end
