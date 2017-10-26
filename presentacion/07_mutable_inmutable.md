### C# es un lenguaje mutable

```csharp
using System.Linq;
using System.Collections.Generic;

namespace MadridDotNet {

    public class Mutable {

        private readonly List<int> Numbers = new List<int>()  {1, 2, 3};

        public Mutable(int number) {
            Numbers.Add(number);
        }
    }
}
```
[@8-12]

---

### Elixir es un lenguaje inmutable

```elixir
iex(1)> x = 1
1
iex(2)> x = 2
2
iex(3)> x = 1  + x
3
iex(4)> x
3

```

---
### Elixir es un lenguaje inmutable

```elixir
iex(1)> numbers = [1, 2, 3]
[1, 2, 3]
iex(2)> numbers ++ [4]
[1, 2, 3, 4]
iex(3)> List.insert_at(numbers, 1, 7)
[1, 7, 2, 3]
```
