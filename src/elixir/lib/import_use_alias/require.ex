defmodule MadridDotNet.Require do

  require MadridDotNet.RequireMacro

  def sumer(a, b) do
    MadridDotNet.RequireMacro.sum(a, b)
  end
end
