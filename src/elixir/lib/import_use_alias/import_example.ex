defmodule MadridDotNet.Import do

  import Enum, only: [count: 1]

  def contador(elements) do
    Enum.count(elements)
  end

  def contador2(elements) do
    count(elements)
  end

end
