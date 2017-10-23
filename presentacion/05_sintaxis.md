## SINTAXIS

```csharp
using System;

namespace Helpers{

    public class ConsoleWriter {

        private string machineName;

        public ConsoleWriter(string machine)
        {
            machineName = machine;
        }

        public void Write(string message)
        {
            string messageWithDate = ConcatDate(message);
            Console.WriteLine($"{messageWithDate} from machine {machineName}");
        }

        private string ConcatDate(string message){
            return $"{message} at {DateTime.Now}";
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



