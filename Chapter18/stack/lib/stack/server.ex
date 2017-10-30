defmodule Stack.Server do
  use GenServer

  ## APIT
  def start_link(list) do
    GenServer.start_link(__MODULE__, list, name:  __MODULE__)
  end

  def pop do
    GenServer.call(__MODULE__, :pop)
  end

  def push(val) do
    GenServer.cast(__MODULE__, {:push, val})
  end

  # GenServer calls
  def handle_call(:pop, _from, [head | tail]) do
    { :reply, head, tail }
  end

  def handle_cast({:push, val}, list) do
    { :noreply, [val|list]}
  end

  def terminate(reason, state) do
    IO.puts "\n\n\n\n\nTerminating due to #{reason} with state #{inspect state}\n\n\n\n\n"
    :ok
  end
end
