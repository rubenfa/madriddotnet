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
error CS0029: No se puede convertir implícitamente el tipo 'string' en 'int'
```
---

Note:

C# es de tipado estático, lo cual da mucha seguridad, ya que ayuda a detectar errores
**en tiempo de compilación**

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

Note:
Elixir es dinámico, es decir, que los petes los encontramos siempre en tiempo de ejecución.
Pero es de tipado fuerte **no como JavaScript por ejemplo**

---
#### Typespecs

```elixir
@type t :: binary

@spec split(t, pattern | Regex.t(), keyword) :: [t]
def split(string, pattern, options \\ [])
```
Note:
A modo de documentación existen los typespecs, que se utilizan para definir los tipos de los parámetros y los
valores devueltos. Usando herramientas como Dializer, podemos conseguir efecto **lintern**. ¡¡ Pero solo warnings !!
