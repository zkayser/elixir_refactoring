defmodule ElixirRefactoring.NorweiganParrot do
  defstruct voltage: 0

  defimpl ElixirRefactoring.Polybird, for: ElixirRefactoring.NorweiganParrot do
    def plumage(%ElixirRefactoring.NorweiganParrot{voltage: voltage}) when voltage > 100, do: "scorched"
    def plumage(%ElixirRefactoring.NorweiganParrot{}), do: "beautiful"
  end
end