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
@[7-22]
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

---

### Métodos vs Funciones


```csharp
using System;

namespace Helpers{

    public class MethodClass {

        public int sum(int a, int b) {
            return a + b;
        }

        public int sum(int a, int b, int c) {
            return a + b + c;
        }

        public double sum(double a, double b) {
            return a + b;
        }

        public double sum(double a, double b, double c) {
            return a + b + c;
        }

    }
}

```
@[7-13]
@[15-21]


---

### Métodos vs Funciones

```elixir
defmodule MadridDotNet.Arity do

  def sum(a, b) do
    a + b
  end

  def sum (a, b, c) do
    a + b + c
  end
end
``` 

```
sum/2
sum/3
```



