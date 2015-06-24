defmodule GeomTest do
  use ExUnit.Case

  doctest Geom

  test "correctly calculates area of a rectangle" do
    assert Geom.area({:rectangle, 4, 4}) == 16
  end

  test "calculates the area of a triangle" do
    assert Geom.area({:triangle, 2, 2}) == 2
  end

  test "calculates the area of an ellipse" do
    assert Geom.area({:ellipse, 1, 1}) == 3.141592653589793
  end

end
