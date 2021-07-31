defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "retorna a quantidade de numerais ímpares da lista de strings" do
      list1 = ["1", "3", "5", "99", "xyz", "abc", "101"]
      list2 = ["kbd", "abd"]
      list3 = ["2", "80"]

      assert ListFilter.call(list1) == 5
      assert ListFilter.call(list2) == 0
      assert ListFilter.call(list3) == 0
    end

    test "retorna zero para uma lista vazia" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
