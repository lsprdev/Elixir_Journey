defmodule PlaygroundMiscellaneousTest do
  use ExUnit.Case
  doctest PlaygroundMiscellaneous

  test "greets the world" do
    assert PlaygroundMiscellaneous.hello() == :world
  end
end
