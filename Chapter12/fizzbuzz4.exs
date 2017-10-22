defmodule FizzBuzz do
  def upto(n), do: 1..n |> Enum.map(&fizzbuzz/1)

  defp fizzbuzz(n) do
    case {rem(n,5), rem(n,3)} do
      {0,0} -> "FizzBuzz"
      {_,0} -> "Fizz"
      {0,_} -> "Buzz"
      {_,_} -> n
    end
  end
end
