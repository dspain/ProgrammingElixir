defmodule Parallel do
  def pmap(collection, fun) do
    me = self
    collection
    |> Enum.map(fn (elem) ->
         spawn_link fn -> (
          :timer.sleep Enum.random(0..200)
          send me, { self, fun.(elem) })
        end
       end)
    |> Enum.map(fn (pid) ->
         receive do { _pid, result } -> result end
       end)
  end
end
