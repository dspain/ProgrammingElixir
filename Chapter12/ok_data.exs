defmodule Ok do
  def ok!(param) do
    case param do
      {:ok, data} -> data
      {_,   data} -> raise "Failure - here's some info: #{data}"
    end
  end
end
