defprotocol ElixirRefactoring.Polybird do
  @fallback_to_any true
  def plumage(bird)
end

defmodule ElixirRefactoring.NorweiganParrot do
  defstruct voltage: 0

  defimpl ElixirRefactoring.Polybird, for: ElixirRefactoring.NorweiganParrot do
    def plumage(%ElixirRefactoring.NorweiganParrot{voltage: voltage}) when voltage > 100,
      do: "scorched"

    def plumage(_), do: "beautiful"
  end
end

defmodule ElixirRefactoring.EuropeanSwallow do
  defstruct number_of_coconuts: 0

  defimpl ElixirRefactoring.Polybird, for: ElixirRefactoring.EuropeanSwallow do
    def plumage(%ElixirRefactoring.EuropeanSwallow{}), do: "average"
  end
end

defmodule ElixirRefactoring.AfricanSwallow do
  defstruct number_of_coconuts: 0

  defimpl ElixirRefactoring.Polybird, for: ElixirRefactoring.AfricanSwallow do
    def plumage(%ElixirRefactoring.AfricanSwallow{number_of_coconuts: num}) when num > 2,
      do: "tired"

    def plumage(_), do: "average"
  end
end

defimpl ElixirRefactoring.Polybird, for: Any do
  def plumage(_), do: "average"
end
