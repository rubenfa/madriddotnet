defmodule MadridDotNet.OTP.AgentSupervisor do
  use Supervisor

  alias MadridDotNet.OTP.SuscribeSystem

  def start_link() do
    Supervisor.start_link(__MODULE__, [], name: :agent_supervisor)
  end

  def init([]) do
    children = [     
      worker(SuscribeSystem, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
