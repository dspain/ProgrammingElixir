defmodule MyEnum do
  def all?([], _func) do
    true
  end
  def all?([head | tail], func) do
    func.(head) && all?(tail, func)
  end

  def each([], _func) do
    :ok
  end
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  def filter([],_func) do
    []
  end
  def filter([head|tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end
end
