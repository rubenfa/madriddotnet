### Organización del código

---

### C# se organiza en namespaces y clases

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

Note: 
Típico ejemplo de C#: namespace, clase, campos, y métodos
---
### Elixir se organiza en módulos

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

Note:
- Se organiza en módulos
- No existen namespaces, pero se usan los puntos para simularlos
- Funciones públicas o funciones privadas

### En C# las clases tienen métodos

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

Note:
- Firma de un método, por su nombre y sus parámetros (y tipos no nombres)

---

### En Elixir los módulos tienen funciones

```elixir
defmodule MadridDotNet.Arity do

  def sum(a, b) do
    a + b
  end

  def sum(a, b, c) do
    a + b + c
  end
end
``` 

```
sum/2
sum/3
```
Note:
- Número de parámetros y nombre
- Arity, en matemáticas
- Se ignora el tipo porque Elixir es **DINÁMICO**

