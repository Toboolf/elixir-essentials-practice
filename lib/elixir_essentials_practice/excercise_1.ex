defmodule SantasFloorMapping do

    def read_santas_map(string), do: count_next(String.split(string, ""), 0)

    def count_next([], count), do: count
    def count_next([h | t], count), do: count_next(t, count + upstairs_downstairs(h))

    def upstairs_downstairs("("), do: 1
    def upstairs_downstairs(")"), do: -1
    def upstairs_downstairs(""), do: 0

end