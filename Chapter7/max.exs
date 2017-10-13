defmodule MyList do

  def max([head|tail]), do: _max(tail, head)

  # private methods
  def _max([],value), do: value
  def _max([head | tail], value) when head > value do
    _max(tail, head)
  end
  def _max([head | tail], value) when head < value do
    _max(tail, value)
  end
end
