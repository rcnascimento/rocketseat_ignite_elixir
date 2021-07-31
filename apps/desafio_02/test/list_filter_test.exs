defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "greets the world" do
    assert ListFilter.call([]) == 0
  end
end
