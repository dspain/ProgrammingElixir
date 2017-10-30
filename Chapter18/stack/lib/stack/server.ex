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
  def init(stash_pid) do
    current_list = Stack.Stash.get_value stash_pid
    { :ok, {current_list, stash_pid} }
  end
  def handle_call(:pop, _from, {[head | tail], stash_pid}) do
    { :reply, head, {tail, stash_pid} }
  end
  def handle_cast({:push, val}, {list, stash_pid}) do
    { :noreply, {[val|list], stash_pid} }
  end
  def terminate(_reason, {current_list, stash_pid}) do
    Stack.Stash.save_value stash_pid, current_list
  end
end
