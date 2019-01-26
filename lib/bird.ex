defmodule ElixirRefactoring.Bird do
  defstruct type: nil, number_of_coconuts: 0, voltage: 0

  # %Bird{type: nil, number_of_coconuts: 0, voltage: 0}

  def plumage(%{type: "AfricanSwallow", number_of_coconuts: num}) when num > 2, do: "tired"

  def plumage(%{type: "NorweiganParrot", voltage: voltage}) when voltage > 100, do: "scorched"

  def plumage(%{type: "NorweiganParrot"}), do: "beautiful"

  def plumage(%__MODULE__{}), do: "average"
end
