defmodule ListLength do
  @moduledoc """
  Documentation for `ListLength`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListLength.call()
      :world

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
