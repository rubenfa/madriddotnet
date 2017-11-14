### Mutabilidad vs Inmutabilidad

---

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

Note:
C# es un lenguaje mutable. Como mucho podemos definir cosas como readonly (para solo instanciarlas una vez). Pero se pueden modificar
---

### Elixir es un lenguaje inmutable, pero con *rebinding*

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

Note:
Cuando uno empieza a usar Elixir, se extraña, porque no parece un lenguaje mutable. Pero lo es. Es porque tiene rebinding. 
En Erlang eso no se puee hacer
---

### Elixir es un lenguaje inmutable, pero con *rebinding*

![Image-Absolute](assets/img/mutable_inmutable.png)

Note:
En realidad no es asignar un valor a una variable, es más bien como asignar una etiqueta a un valor

---
### Piensa en este ejemplo

```
array = [ 1, 2, 3 ]
do_something(array)
print(array)
```
Note:
No está escrito en ningún lenguaje. En un lenguaje inmutable se imprimirá 1, 2 y 3. En un lenguaje mutable dependerá.
Inmutable es igual a no side effects.

+++?image=assets/img/right.gif

