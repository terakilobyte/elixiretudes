defmodule Etudes4Test do
  use ExUnit.Case

  doctest Etudes4

  test "correctly calculates the gcd of even numbers" do
    assert Etudes4.gcd4dash2(2, 2000000) == 2
  end

  test "correctly calculates the gcd of even/odd numbers" do
    assert Etudes4.gcd4dash2(5, 50) == 5
  end

  test "handles primes correctly by returning 1" do
    assert Etudes4.gcd4dash2(11, 234) == 1
  end

  test "handles equality" do
    assert Etudes4.gcd4dash2(7,7) == 7
  end

  test "handles nonsensical gcds" do
    assert Etudes4.gcd4dash2(0, 50) == 0
  end

  test "it calculates factorials" do
    assert Etudes4.fact(5) == 120
  end

  test "it handles 1, 0, and negatives" do
    assert Etudes4.fact(0) == 1
    assert Etudes4.fact(1) == 1
    assert Etudes4.fact(-1) == 1
  end

end
