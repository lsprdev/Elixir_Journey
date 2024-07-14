defmodule Binaries do
  @moduledoc """
  Documentation for `Binaries`.
  """

  def get_png_binary() do
    File.read!(Path.join("lib", "random_img.png"))
  end

  def type_form_binary(file_binary) when binary_part(file_binary, 0, 8) == <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x01A, 0x0A>>, do: {:ok, "image/png"}

end
