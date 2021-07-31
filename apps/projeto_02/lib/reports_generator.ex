defmodule ReportsGenerator do
  @moduledoc """
  Projeto: Consumo de dados de arquivos.
  """

  alias ReportsGenerator.Parser

  @doc """
  Lê o conteúdo de um arquivo CSV no padrão "id,pedido,valor" e calcula o
  somatório de valores por id.

  ## Exemplo

      iex> ReportsGenerator.build("tmp/report_test.csv")
      %{
        "1" => 48,
        "10" => 36,
        "2" => 45,
        "3" => 31,
        "4" => 42,
        "5" => 49,
        "6" => 18,
        "7" => 27,
        "8" => 25,
        "9" => 24
      }

  """
  def build(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(%{}, fn line, report -> sum_values(line, report) end)
  end

  defp sum_values([id, _, price], report) do
    # Operador de "curto circuito" define valor 0 na primeira ocorrência de uma
    # chave no Map.
    total_partial = report[id] || 0
    Map.put(report, id, total_partial + price)
  end
end
