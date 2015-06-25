defmodule Etudes4 do
  @moduledoc """
  Chapter 4. Logic and Recursion from Etudes for Elixir
  """

  @doc """
  Etude 4-1: Using Case
  """
  def area4dash1(shape, a, b) do
    case shape do
      :rectange when a > 0 and b > 0 -> a * b
      :triangle when a > 0 and b > 0 -> a * b / 2
      :ellipse when a > 0 and b > 0 -> :math.pi() * a * b
    end
  end

  @doc """
  Cacluates the greatest common divisor of two intigers using the Dijkstra
  algorithm.

  Examples:
    iex> Etudes4.gcd4dash2(5, 5)
    5

    iex> Etudes4.gcd4dash2(136, 7)
    1
  """

  @spec gcd4dash2(number(), number()) :: number()

  def gcd4dash2(m, n) do
    _gcd4dash2(m, n)
  end

  defp _gcd4dash2(0, _)  do 0 end

  defp _gcd4dash2(m, m) do m end

  defp _gcd4dash2(m, n) when m > n do
    _gcd4dash2(m - n, n)
  end

  defp _gcd4dash2(m, n) do
    _gcd4dash2(m, n - m)
  end

  @doc """
  Tail optimized recursive factorial function

  Examples:
    iex> Etudes4.fact(10)
    3628800
  """
  @spec fact(number()) :: number()

  def fact(n) do
    _fact(n, 1)
  end

  defp _fact(n, acc) when n <= 1 do
    acc
  end

  defp _fact(n, acc) do
    _fact(n - 1, acc * n)
  end

  @doc """
  Raises by a power

  Examples:
    iex> Etudes4.raise(2, 2)
    4
  """


end
