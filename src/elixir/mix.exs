defmodule Elixir.Mixfile do
  use Mix.Project
  
  def project do
    [
      app: :madriddotnet,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [ mod: {MadridDotNet.OTP.Application, []},
      extra_applications: [:logger]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:timex, "~> 3.1"},
      {:sweet_xml, "~> 0.6.5"}
    ]
  end
end
