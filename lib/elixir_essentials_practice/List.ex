defmodule ElixirEssentialsPractice.List do

    def size(list), do: count(list, 0)

    defp count([], n), do: n
    defp count([_ | t], n), do: count(t, n + 1)

    def sumElements(list), do: sum(list, 0)

    defp sum([], addition), do: addition
    defp sum([number | t], addition), do: sum(t, addition + number)

    def newTil(number), do: addNewNumber([], number)

    defp addNewNumber(list, 0), do: [0 | list]
    defp addNewNumber(list, newItem), do: addNewNumber([newItem | list], newItem - 1)

    def newFromRange(min, max), do: addNewNumber([], max, min)

    defp addNewNumber(list, newItem, min) when newItem == min, do: [newItem | list]
    defp addNewNumber(list, newItem, min), do: addNewNumber([newItem | list], newItem - 1, min)

    def fizz_buzz(list), do: do_fizz_buzz([], list)

    defp do_fizz_buzz(newList, []) , do: newList
    defp do_fizz_buzz(newList, [h|t]) when rem(h,3) == 0 and rem(h,5) == 0 do
        do_fizz_buzz([:fizz_buzz | newList], t)
    end
    defp do_fizz_buzz(newList, [h|t]) when rem(h,3) == 0 do
        do_fizz_buzz([:fizz | newList], t)
    end
    defp do_fizz_buzz(newList, [h|t]) when rem(h,5) == 0 do
        do_fizz_buzz([:buzz | newList], t)
    end
    defp do_fizz_buzz(newList, [h|t]) do
        do_fizz_buzz([h | newList], t)
    end

    def remainder_of(0,0,_), do: :fizz_buzz
    def remainder_of(0,_,_), do: :fizz
    def remainder_of(_,0,_), do: :buzz
    def remainder_of(_,_,num), do: num

end