defmodule Ok do
  def ok!(param) do
    case param do
      {:ok,  data} -> data
      {type, data} -> raise "Failure - here's some info: #{type} -- #{data}"
    end
  end
end
