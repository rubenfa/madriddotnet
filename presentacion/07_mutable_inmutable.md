### C# es un lenguaje mutable #

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
@[8-12]

---

### Elixir es un lenguaje inmutable, pero con rebinding

```elixir
iex(1)> x = 1
1
iex(2)> x = 2
2
iex(3)> x = 1 + x
3
iex(4)> x
3

```
---

### Elixir es un lenguaje inmutable, pero con rebinding

![Image-Absolute](assets/img/mutable_inmutable.png)

---
### Piensa en este ejemplo

```
array = [ 1, 2, 3 ]
do_something(array)
print(array)
```

+++?image=assets/img/right.gif

