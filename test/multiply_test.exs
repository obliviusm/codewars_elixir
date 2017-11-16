defmodule MultiplyTest do
  use ExUnit.Case
  doctest Multiply

  test "it really multiplies" do
    assert Multiply.multiply(5,6) == 30
  end
end
