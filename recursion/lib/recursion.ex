defmodule Recursion do
  @moduledoc """
  Documentation for `Recursion`.
  """
  def get_equipment_list() do
    ["sword", "shield", "helmet", "armor", "boots", "gloves"]
  end

  def loop([]), do: nil
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def get_equipment_count([]), do: 0
  def get_equipment_count([_ | tail]) do
    1 + get_equipment_count(tail)
  end

  def format_equipment_list([]), do: []
  def format_equipment_list([head | tail]) do
    # head <> ", " <> format_equipment_list(tail)
    [ head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail) ]
  end

  def occurrence_count([], _), do: 0
  def occurrence_count([value | tail], value), do: 1 + occurrence_count(tail, value)
  def occurrence_count([_ | tail], value), do: occurrence_count(tail, value)

  def find(list), do: find(list, 0)
  def find([], _index), do: :ok
  def find([head | tail], index) do
    IO.puts "#{index} - #{head}"
    find(tail, index + 1)
  end

  def print_multiple_times(msg, n) when n > 0 do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end

  def print_multiple_times(_msg, 0), do: :ok

end
