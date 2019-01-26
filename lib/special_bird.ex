defmodule ElixirRefactoring.SpecialBird do
  defimpl ElixirRefactoring.Polybird, for: Any do
    def plumage(_), do: "average"
  end
end