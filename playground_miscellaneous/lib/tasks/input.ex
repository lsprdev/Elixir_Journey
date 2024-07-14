defmodule Mix.Tasks.Input do
  use Mix.Task

  @shortdoc "Give a short salutation"
  def run(name) do
    IO.puts "Hello #{name}!"
  end
end
