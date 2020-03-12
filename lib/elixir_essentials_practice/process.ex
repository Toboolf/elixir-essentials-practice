defmodule MyProcesses do

  def start_ping_pong(n) do
    p1 = spawn MyProcesses, :ping_pong, [0,n]
    p2 = spawn MyProcesses, :ping_pong, [0,n]
    send p2, {:ping, p1}
  end
  
  def ping_pong(count,max) do
    receive do
      {:ping, caller} when count < max ->
        :timer.sleep(500)
        IO.puts "pong #{count}"
        send(caller, {:pong, self()})
        ping_pong(count + 1, max)
      {:pong, caller} when count < max ->
        :timer.sleep(500)
        IO.puts "ping #{count}"
        send(caller, {:ping, self()})
        ping_pong(count + 1, max)
      {_, caller} -> 
        IO.puts "end #{count}"
        send(caller, {:end, self()})
    end
  end

end