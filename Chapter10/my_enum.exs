defmodule MyEnum do
  def all?([], _func) do
    true
  end
  def all?([head | tail], func) do
    func.(head) && all?(tail, func)
  end

end
