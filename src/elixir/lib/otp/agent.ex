defmodule MadridDotNet.OTP.SuscribeSystem do
  use Agent

  def start_link() do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get_suscribers() do
    Agent.get(__MODULE__, fn(suscribers) -> suscribers end)
  end

  def add_suscriber({username, email}) do
    Agent.update(__MODULE__, fn(sus) ->  Map.put(sus, username, email) end)
  end


end
