defmodule ElixirRefactoring.PolyBirdTest do
  use ExUnit.Case

  alias ElixirRefactoring.Polybird, as: Bird
  alias ElixirRefactoring.{EuropeanSwallow, AfricanSwallow, NorweiganParrot}

  test "European Swallow Plumage" do
    bird = %EuropeanSwallow{}
    assert Bird.plumage(bird) == "average"
  end

  test "African Swallow plumage" do
    bird = %AfricanSwallow{number_of_coconuts: 3}
    assert Bird.plumage(bird) == "tired"
    bird = %AfricanSwallow{number_of_coconuts: 1}
    assert Bird.plumage(bird) == "average"
  end

  test "Norweigan Parrot plumage" do
    bird = %NorweiganParrot{voltage: 101}
    assert Bird.plumage(bird) == "scorched"
    bird = %NorweiganParrot{voltage: 1}
    assert Bird.plumage(bird) == "beautiful"
  end

  test "fail" do
    assert Bird.plumage(%{}) == "average"
  end
end
