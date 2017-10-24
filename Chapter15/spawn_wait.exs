defmodule SpawnWait do
  import :timer, only: [ sleep: 1 ]

  def send_parent(pid) do
    send pid, "Hi mom!"
    raise "Error"
    exit(:boom)
  end

  def receive_all do
    receive do
      msg ->
        "Here's the message: #{IO.inspect msg}"
    end
    receive_all
  end
  def run do
    spawn_monitor(SpawnWait, :send_parent, [self])
    sleep 500
    receive_all
  end

end

SpawnWait.run
