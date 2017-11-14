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
Elixir se organiza en módulos, no en clases. Los módulos se puden llamar con su nombre
y la función a la que se puede llamar. Las funciones pueden ser públicas, o privadas. 
**NO TIENE NAMESPACES*
---

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
Las clases en C# tienen métodos. La firma de un método depende de su nombre y los típos de sus parámetros. 

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
Los módulos de Elixir tienen funciones que se distinguen por su nombre y por su número de parámetros
**Arity** es la forma de identificar las funciones

