defmodule Flip do
  @doc """
  Flip the first and second parameter when calling a method. The second
  parameter needs to be an array. The last one is the method which is
  going to be called.

  ## Examples

  iex> 2 |> Flip.flip([10], &Kernel.-/2)
  8
  iex> 2 |> Flip.flip([10, 3], fn (x1, x2, x3) -> (x1 - x2) * x3 end)
  24
  """
  def flip(parameter_2, [parameter_1|other_parameters], method) do
    apply(method, [parameter_1, parameter_2|other_parameters])
  end
end
