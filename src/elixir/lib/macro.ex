defmodule MadridDotNet.RequireMacro do

  defmacro sum(a, b) do
    quote do
      number1 = unquote(a)
      number2 = unquote(b)
      result = number1 + number2

      IO.puts("El resultado de sumar #{number1} y #{number2} es #{result}")
    end
  end

end
