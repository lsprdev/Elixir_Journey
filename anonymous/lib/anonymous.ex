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


end
