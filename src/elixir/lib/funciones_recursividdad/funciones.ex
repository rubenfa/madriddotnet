defmodule MadridDotNet.Funciones do

  def sum() do
    f = fn(x, y) -> x + y end
    f.(3,5)
  end

  def sum2() do
    (fn(x, y) -> x + y end).(3,5)
  end


  def calcular() do
    calculador(fn(x,y) -> x + y end)
    calculador(fn(x,y) -> x - y end)
  end


  def calculador(f) do
    IO.puts(f.(3,2))
  end

end
