defmodule ReportsGenerator.Parser do
  @moduledoc """
  Projeto: Consumo de dados de arquivos.

  Este é um módulo de suporte para transformação dos dados de trabalho.
  """

  @doc """
  Lê o conteúdo de um arquivo CSV com colunas no padrão "id,pedido,valor" e
  retorna uma lista com listas dos conteúdos das colunas.
  A coluna "valor" precisa ser do tipo inteiro.

  ## Exemplo

      iex> ReportsGenerator.Parser.parse_file("tmp/report_test.csv") |> Enum.each(&IO.inspect(&1))
      ["1", "pizza", 48]
      ["2", "açaí", 45]
      ["3", "hambúrguer", 31]
      ["4", "esfirra", 42]
      ["5", "hambúrguer", 49]
      ["6", "esfirra", 18]
      ["7", "pizza", 27]
      ["8", "esfirra", 25]
      ["9", "churrasco", 24]
      ["10", "churrasco", 36]
      :ok

  """
  def parse_file(filename) do
    filename
    # Leitura e processamento lazy do conteúdo do arquivo.
    |> File.stream!()
    |> Stream.map(fn line -> parse_line(line) end)
  end

  defp parse_line(line) do
    line
    # Remove espaços e o caracter de quebra de linha.
    |> String.trim()
    # Divide a string pelo separador de colunas do CSV (vírgula).
    # A saída é uma lista com os conteúdos das colunas.
    |> String.split(",")
    # Transforma o terceiro elemento da lista em número inteiro.
    |> List.update_at(2, &String.to_integer/1)
  end
end
