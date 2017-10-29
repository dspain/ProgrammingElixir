defmodule Stack.Server do
  use GenServer

  def handle_call(:pop, _from, [head | tail]) do
    { :reply, head, tail }
  end

  def handle_cast({:push, val}, list) do
    { :noreply, [val|list]}
  end
end
