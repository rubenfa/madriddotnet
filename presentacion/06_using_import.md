### C# se usan namespaces para organizar el código #

```csharp
using System.Linq;
using System.Collections;
using C = System.Collections.Generic;

namespace MadridDotNet.Using
{
    public class Alias {

        public static C.List<string>  GenerateList() {
            return new C.List<string>() {"one", "two", "three"};
        }
    }
}

```
@[1-3]
@[10]

Note:
Para organizar las clases C# utiliza los namespaces. A los namespaces se les puede poner un alias
---

### Elixir, alias

```elixir
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

```

@[3]
@[7-9]
@[5]
@[11-13]

Note:
Elixir no tiene objetos, por eso para organizar los distintos módulos hay diferentes formas de hacerlo.
Alias es para evitar tener que escribir todo el nombre

---

### Elixir, import

```elixir
defmodule MadridDotNet.Import do

  import Enum, only: [count: 1]

  def contador(elements) do
    Enum.count(elements)
  end

  def contador2(elements) do
    count(elements)
  end

end
```
@[5-7]
@[3]
@[9-11]

Note:
import añade una librería como si fuera programada dentro del mismo módulo

---

### Elixir, require

```elixir
defmodule MadridDotNet.Require do

  require MadridDotNet.RequireMacro

  def sumer(a, b) do
    MadridDotNet.RequireMacro.sum(a, b)
  end
end

```

@[5-7]
@[3]

Note:
require se utiliza para importar macros. Una macro es código que escribe código, por lo que antes de utilizarla
el **compilador de Elixir** debe expandirla dentro del módulo.

---
### Elixir, use

```elixir
defmodule AssertionTest do
  use ExUnit.Case, async: true

  test "always pass" do
    assert true
  end
end
```
Note:
relacionado con require. Hay veces que además de usar una macro, hay que iniciar ciertos valores, así que se utiliza use.

---

```elixir
defmodule AssertionTest do
  require ExUnit.Case
  ExUnit.Case.__using__([async: true])

  test "always pass" do
    assert true
  end
end
```

Note: 
Al final Elixir el compilador primero hace un require y luego llama a la función __using__ que pueden tener los módulos y que se 
usa a modo de **constructor**
