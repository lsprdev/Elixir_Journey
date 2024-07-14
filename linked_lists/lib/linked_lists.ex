defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """

  def append_last(list, element) do
    list ++ [element]
  end

  def append_first(list, element) do
    [element] ++ list
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

  def car_list do
    ["volvo", "bmw", "mercedes", "audi"]
  end

  def add_slow(list, new) do
    list ++ [new]
  end

  def add_fast(list, new) do
    # List.insert_at(list, -1, new)
    reverse_list = Enum.reverse(list)
    new_list = [new | reverse_list]
    Enum.reverse(new_list)
  end

  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  def list_length(list) do
    # Enum.count(list)
    length(list)
  end

  def search_item(list, item) do
    # Enum.find_index(list, fn x -> x == item end) # index of item in list
    item in list # true or false
  end

end
