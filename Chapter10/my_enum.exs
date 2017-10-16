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

  def split(list,n) when n >= 0 do
    _split([], list, n)
  end
  def split(_,n) when n < 0 do
    raise "can't split on negative number"
  end

  defp _split(list1, list2, 0) do
    {list1, list2}
  end
  defp _split(list1, [head|tail], n) do
    _split(list1 ++ [head], tail, n-1)
  end

  def take(list,n) do
    _take([], list, n)
  end

  defp _take(list1,_list2,0) do
    list1
  end
  defp _take(list1, [head|tail], n) do
    _take(list1 ++ [head], tail, n-1)
  end

end
