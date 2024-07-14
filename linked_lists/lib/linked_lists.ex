defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """

  def append(list, element) do
    list ++ [element]
  end

  def other_append(list, element) do
    [element | list]
  end

  def head_tail(list) do
    [head | tail] = list
    {head, tail}
  end

  def first_second_rest(list) do
    [first, second | rest] = list
    {first, second, rest}
  end
end
