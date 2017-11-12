defmodule MadridDotNet.PatternMatching.FizzBuzz do

  def start(numbers) do
    Enum.each(numbers, fn(x) -> check(x) end)
  end

  defp check(number) when rem(number, 15) == 0, do:  IO.puts("FizzBuzz")
  defp check(number) when rem(number, 3) == 0, do:   IO.puts("Fizz")
  defp check(number) when rem(number, 5) == 0, do:   IO.puts("Buzz")
  defp check(number), do: IO.puts("#{number}")
end
