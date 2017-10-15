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

end
