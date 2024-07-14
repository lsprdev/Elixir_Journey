defmodule Calculator do
  def find_percentage_of(percentage, value) do
    # value * (percentage / 100)
    # dec_percentage = BasicMath.divide(percentage, 100)
    # BasicMath.multiply(value, dec_percentage)

    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)

  end

  def find_distance_travelled(speed, time) do
    # speed = distance / time
    # BasicMath.multiply(speed, time)
    # or
    speed
    |> BasicMath.multiply(time)
  end

end
