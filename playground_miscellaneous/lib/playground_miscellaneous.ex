defmodule PlaygroundMiscellaneous do
  @moduledoc """
  Documentation for `PlaygroundMiscellaneous`.
  """

  def hello do
    IO.puts "Hello, world!"
  end

  def input_name(name) do
    IO.puts "Hello #{name}!"
  end

  def is_even?(number), do: rem(number, 2) == 0

  def average(list), do: average(list, 0, 0)
  def average([], count, num), do: "#{num} / #{count} = #{num / count}"
  def average([head | tail], count, num), do: average(tail, count + 1, head + num)

end
