defmodule MyList do
  def sum(list), do: _sum(list, 0)

  # private methods
  def _sum([], total), do: total
  def _sum([head|tail],total), do: _sum(tail, head + total)
end
