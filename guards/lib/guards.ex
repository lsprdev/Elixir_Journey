defmodule Guards do
  @moduledoc """
  Documentation for `Guards`.
  """

  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when is_binary(value), do: :string

  def is_single_digit_number(value) when is_integer(value) and value < 10, do: true
  def is_single_digit_number(value) when not is_integer(value) or value > 9, do: false

  def is_odd_or_even(value) when is_integer(value) do
    if rem(value, 2) == 0 do
      "Even"
    else
      "Odd"
    end
  end
  def is_odd_or_even(value) when not is_integer(value), do: "Not a number, try again."

  defguardp is_even(value) when is_integer(value) and rem(value, 2) == 0

  def is_number_even(value \\ :empty)
  def is_number_even(value) when is_even(value), do: :even
  def is_number_even(value) when not is_even(value), do: :not_even

  def default_value(value \\ 4), do: IO.puts value
end
