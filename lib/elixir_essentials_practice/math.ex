defmodule ElixirEssentialsPractice.Math do

    def kind(n) when not is_number(n), do: :not_a_number
    def kind(n) when n > 0, do: :positive
    def kind(0), do: :zero
    def kind(n) when n < 0, do: :negative

    def gcd(n,n), do: n
    def gcd(n,m) when n > m, do: gcd(n - m, m) 
    def gcd(n,m) when m > n, do: gcd(n, m - n)

    def sieve_of_eratosthenes(n), do: do_sieve( list(n), [] )

    def list(n), do: for x <- 1..n, do: x

    def do_sieve([], primes), do: primes
    def do_sieve([1|t], primes), do: do_sieve( t,primes )
    def do_sieve([h|t], primes), do: do_sieve( (for x <- t, rem(x,h) != 0, do: x), [h|primes] )

    def fibonacci(n), do: fibonacci([1,0],0,1,1,n)
    defp fibonacci(list, n1, n2, index, max) when index == max, do: [n1+n2|list]
    defp fibonacci(list, n1, n2, index, max), do: fibonacci([n1+n2|list], n1+n2,n2, index + 1, max)

end