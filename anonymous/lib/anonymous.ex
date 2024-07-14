defmodule Anonymous do
  @moduledoc """
  Documentation for `Anonymous`.
  """
  def add_anon(a, b) do
    # add = fn a, b -> a + b end
    add = &(&1 + &2)

    add.(a, b)
  end

  def greatter_than(a, b) do
    # greatter = fn a, b -> a  <= b end
    # greatter = &(&1 <= &2)
    greatter = &<=/2

    greatter.(a, b)
  end

  def get_equipment_list() do
    [:space_helmet, :space_suite, :snacks, :grappling_hook]
  end

  def item_details(:space_helmet) do
    {3, :kg, 1}
  end

  def item_details(:space_suite) do
    {16, :kg, 1}
  end

  def item_details(:snacks) do
    {1, :kg, 16}
  end

  def item_details(:grappling_hook) do
    {4, :lb, 1}
  end

  def get_weight_lbs(list) do
    get_lbs = fn item ->
      { wt, type, _qty} =item_details(item)
      case type do
         :kg -> Float.ceil(wt * 2.2, 2)
         _ -> wt
      end
    end
    Enum.map(list, get_lbs)

  end

  def get_first_item(list) do
    first = fn [head | _rest] -> head end
    first.(list)
  end

  def atom_to_string(list) do
    convert = fn x ->
      to_string(x) |> String.upcase() |> String.replace("_", " ")
    end
    Enum.map(list, convert)
  end
end
