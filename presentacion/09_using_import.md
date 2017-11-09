### C# tiene namespaces para organizar el código #

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
@[11]

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
