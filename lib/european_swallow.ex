defmodule ElixirRefactoring.EuropeanSwallow do
  defstruct number_of_coconuts: 0

  defimpl ElixirRefactoring.Polybird, for: ElixirRefactoring.EuropeanSwallow do
    def plumage(%ElixirRefactoring.EuropeanSwallow{}), do: "average"
  end
end