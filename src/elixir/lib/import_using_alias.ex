defmodule MadridDotNet.Alias do

  alias MadridDotNet.Examples.Alias.Example1

  alias MadridDotNet.Examples.Alias.Example1, as: Ex

  def helloer() do
    Example1.say_hello
  end

  def helloer2() do
    Ex.say_hello
  end
end



