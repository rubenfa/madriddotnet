defmodule MadridDotNet.Recursividad do

  def the_final_countdown(n) do

    if n == 0 do
      IO.puts("It's the final countdown !!!")
    else
      the_final_countdown(n-1)
    end

  end
end
