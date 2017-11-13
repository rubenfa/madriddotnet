defmodule MadridDotNet.OTP.Application do
  use Application

  def start(_type, []) do
    MadridDotNet.OTP.Supervisor.start_link()
  end
end
