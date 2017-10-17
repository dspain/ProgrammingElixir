defmodule MyList do

  def primes(n) do
    for x <- span(2,n), do: Enum.filter(fn a -> rem(x,a) == 0)
  end

  def span(from, to) when from >= to do
    raise "'from' (#{from}) must be less than 'to' #{to}"
  end
  def span(from, to) when from == to do
    [to]
  end
  def span(from, to), do: [from | span(from+1,to)]
end
