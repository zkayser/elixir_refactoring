defmodule ElixirRefactoring.AfricanSwallow do
  defstruct number_of_coconuts: 0

  defimpl ElixirRefactoring.Polybird, for: ElixirRefactoring.AfricanSwallow do
    def plumage(%ElixirRefactoring.AfricanSwallow{number_of_coconuts: num}) when num > 2, do: "tired"
    def plumage(_), do: "average"
  end
end