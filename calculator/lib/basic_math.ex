defmodule BasicMath do
  def add(a, b), do: a + b

  def subtract(a, b), do: a - b

  def multiply(a, b), do: a * b

  def divide(a, b), do: a / b

  def round_up(a), do: :math.ceil(a)

  def round_down(a), do: :math.floor(a)

  def format_floating_points(a), do: Float.ceil(a, 2)
end
