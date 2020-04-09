defmodule WeathersTest do
  use ExUnit.Case
  doctest Weathers

  test "greets the world" do
    assert Weathers.hello() == :world
  end
end
