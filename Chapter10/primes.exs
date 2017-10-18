defmodule MyList do

  def primes(n) do
    total = span(2,n)
    total -- (for x <- total, y <- total, x <= y, x*y <= n, do: x*y)
  end

  def span(from, to) when from > to do
    raise "'from' (#{from}) must be less than 'to' #{to}"
  end
  def span(from, to) when from == to do
    [to]
  end
  def span(from, to), do: [from | span(from+1,to)]
end
