## SINTAXIS

```csharp
using System;

namespace csharp
{
    class Program
    {
        static void Main(string[] args)
        {
            var consoler = new Helpers.ConsoleWriter("cylonmachine");

            consoler.Write("Disk space is 25%");
        }
    }
}
```

---
## SINTAXIS

```elixir
defmodule Sintaxis.ConsoleWriter do

  import DateTime

  def write(message, machine) do
    message_with_date = append_date(message)
    IO.puts message_with_date <> " from machine #{machine}"
  end

  defp append_date (message) do
      "#{message} at #{utc_now}"
  end

end
```



