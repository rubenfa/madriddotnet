defmodule MadridDotNet.Testing.Test do
  @moduledoc """
  Documentación para el módulo MadridDotNet.Testing.Test
  """


  @doc """
  La función sum/2, recibe dos números y devuelve su suma

  ### Ejemplo

  iex> MadridDotNet.Testing.Test.sum(1,2)  
  3

  """
  def sum(a, b) when is_number(a) and is_number(b) do
    a + b
  end

  @doc """
  Si la función sum/2 no recibe dos números escribe un mensaje en pantalla

  ### Ejemplo

  iex> MadridDotNet.Testing.Test.sum("a",2)
  :ok

  iex> MadridDotNet.Testing.Test.sum("a","b")
  :ok

  iex> MadridDotNet.Testing.Test.sum(2,"b")
  :ok

  """
  def sum(_, _) do
    IO.puts("La función sum, solo puede sumar números")
  end
end
