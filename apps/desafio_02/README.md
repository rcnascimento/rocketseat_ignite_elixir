# Desafio 02 - Filtragem em listas

## Descrição

Nesse desafio, você deverá criar um novo projeto com uma função que, dada uma lista de strings que podem representar números **ou não**, filtre todos os elementos numéricos da lista e retorne quantos números ímpares existem nessa lista.

Diferente do desafio 01, a sua solução para esse desafio não precisa ser recursiva. 

Podemos acompanhar o resultado esperado observando o seguinte exemplo de execução da função:

```bash
iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
...> 3
```

> **Dica**: Você pode usar o módulo [`Enum`](https://hexdocs.pm/elixir/Enum.html) para realizar esse desafio.
