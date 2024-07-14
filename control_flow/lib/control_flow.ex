defmodule ControlFlow do
  @moduledoc """
  Documentation for `ControlFlow`.
  """

  def check_max_load(value) do
    if value <= 55, do: "Safe to fly!", else: "Too heavy to fly!"
  end

  def check_fuel_level(percentage) do
    cond do
      percentage == 100 -> "full tank"
      percentage > 75 -> "3/4 tank"
      percentage > 49 -> "1/2 tank"
      percentage > 24 -> "1/4 tank"
      true -> "Empty tank"
    end
  end

  def http_status_code(value) do
    case value do
      200 -> :ok
      201 -> :created
      202 -> :accepted
      n when is_integer(n) and n > 299 -> :error
      _ -> :unknown
    end
  end


end
