defmodule Mix.Tasks.Odd.Even do
  use Mix.Task

  @shortdoc "Check if a number is odd or even"

  def run([number_str]) do
    case String.to_integer(number_str) do
      number when is_integer(number) ->
        if is_odd(number) do
          IO.puts "#{number} is odd"
        else
          IO.puts "#{number} is even"
        end
      _ ->
        handle_invalid_input(number_str)
    end
  rescue
    ArgumentError ->
      handle_invalid_input(number_str)
  end

  defp is_odd(number) do
    rem(number, 2) != 0
  end

  defp handle_invalid_input(input) do
    if is_valid_string(input) do
      IO.puts "#{input} is not a number"
    else
      IO.puts "Invalid input: #{input} is neither a valid integer nor a valid UTF-8 string"
    end
  end

  defp is_valid_string(string) do
    is_binary(string) && String.valid?(string)
  end
end
