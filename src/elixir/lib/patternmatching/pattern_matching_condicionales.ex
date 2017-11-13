defmodule MadridDotNet.PatternMatching.Condicionales do


  def remote_caller() do

    case remote_service_call(1) do
      {:ok, value } -> IO.puts(value)
      {:error, message} -> IO.puts(message)
      _ -> IO.puts("Result not macthed")
    end
  end


  defp remote_service_call(num) do

    if num > 0  do
      {:ok, 123}
    else
      {:error, "Id not found"}
    end
  end

end
