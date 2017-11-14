### Tipado de C# y Elixir

---
### C# es estático #

```csharp
public class Estatico {

    public int sumar(int x, string b) {
        return x + b;
    }
}
```

```
estatico.cs(9,16): error CS0029: No se puede convertir implícitamente el tipo 'string' en 'int'
```
---


### Elixir es dinámico, pero de tipado fuerte

```elixir
defmodule MadridDotNet.Dinamico do
 def suma(a, b) do
   a + b
 end
end
```

```
** (ArithmeticError) bad argument in arithmetic expression
```

---
#### Typespecs

```elixir
@type t :: binary

@spec split(t, pattern | Regex.t(), keyword) :: [t]
def split(string, pattern, options \\ [])
```