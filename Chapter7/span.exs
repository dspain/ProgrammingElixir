defmodule MyList do
  def span(from, to) when from >= to do
    raise "'from' (#{from}) must be less than 'to' #{to}"
  end
  def span(from, to) when from == to do
    [to]
  end
  def span(from, to), do: [from | span(from+1,to)]
end
