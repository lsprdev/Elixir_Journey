defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`.
  """
  def trim_string(str) do
    String.trim(str)
  end

  def get_string_length(str) do
    str |> trim_string() |> String.length()
  end

  def get_first_character(str) do
    str |> trim_string() |> String.first()
  end

  def get_last_character(str) do
    str |> trim_string() |> String.last()
  end

  def capitalize_first_character(str) do
    str |> trim_string() |> String.capitalize()
  end

  def separate_string(str, separator) do
    str |> trim_string() |> String.split(separator)
  end

  def get_string_codepoints(str) do
    str |> trim_string() |> String.codepoints()
  end

  def map_through_list(list) do
    Enum.map(list, fn str -> capitalize_first_character(str) end)
  end

  def get_initials_and_capitalize(full_name) do
    full_name
    |> String.split(" ")
    |> Enum.map(&String.first/1)
    |> Enum.map(&String.upcase/1)
    |> Enum.join(". ")
  end
end
