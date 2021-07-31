defmodule SumListTest do
  use ExUnit.Case
  doctest SumList

  describe "call/1" do
    test "verifica se é retornada a soma dos elementos de uma lista" do
      list1 = [1, 2, 3, 4, 10]
      list2 = [-1, 2, -3, 4, -10]

      assert SumList.call(list1) === 20
      assert SumList.call(list2) === -8
    end

    test "verifica se zero é retornado para uma lista vazia" do
      list = []

      assert SumList.call(list) === 0
    end
  end
end
