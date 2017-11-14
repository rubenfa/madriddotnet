defmodule ElixirTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  doctest MadridDotNet.Testing.Test

  alias MadridDotNet.Testing.Test

  test "Se muestra un mensaje en pantalla cuando se suman valores no numéricos" do
    assert capture_io(fn -> Test.sum("a", 1) end) == "La función sum, solo puede sumar números\n"
  end

end
