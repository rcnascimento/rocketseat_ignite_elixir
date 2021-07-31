# Extrai arquivos de exemplo de arquivo ZIP antes de executar os testes.
# Usa o módulo zip da biblioteca padrão do Erlang:
# https://erlang.org/doc/man/zip.html#unzip-2
:zip.unzip('example_files.zip', [{:cwd, ~c'tmp'}])

ExUnit.start()
