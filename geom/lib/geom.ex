defmodule Geom do
  @moduledoc """
  Provides geometric functions
  """

  @doc """
  Area returns the area of a provided geometric shape
  Examples:
    iex> Geom.area({:rectangle, 3, 4})
    12


    iex> Geom.area({:triangle, 3, 5})
    7.5


    iex> Geom.area({:ellipse, 2, 4})
    25.132741228718345
  """

  def area(where) do
    {shape, a, b} = where
    area(shape, a, b)
  end

  defp area(:rectangle, a, b) when a > 0 and b > 0 do
    a * b
  end

  defp area(:triangle, a, b) when a > 0 and b > 0 do
    a * b / 2.0
  end

  defp area(:ellipse, a, b) when a > 0 and b > 0 do
    :math.pi() * a * b
  end

  defp area(_, _, _) do
    0
  end



end
