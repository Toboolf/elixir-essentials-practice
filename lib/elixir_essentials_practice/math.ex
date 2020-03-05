defmodule ElixirEssentialsPractice.Math do

    def kind(n) when not is_number(n), do: :not_a_number
    def kind(n) when n > 0, do: :positive
    def kind(0), do: :zero
    def kind(n) when n < 0, do: :negative

end