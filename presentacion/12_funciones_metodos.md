### Funciones anónimas en  C# #

```csharp
 Func<int,int,int> f = (x,y) => x +y ;
 var resultado = f(2,3); // Devuelve 5 
```

---

### Funciones anónimas en  C# #

```csharp
// Define la función y la llama.
// Devuelve 5
int resultado  = 
       new Func<int,int,int>((x,y) => x +y)(2,3) ;
```

### Funciones anónimas en Elixir #

```elixir
f = fn(x, y) -> x + y end
f.(3,5)
```
---

### Funciones anónimas en Elixir #

```elixir
(fn(x, y) -> x + y end).(3,5)
```

---

### Funciones de primer orden en C# #

```csharp
public static void Calculador (Func<int, int, int> f) {
  var resultado = f(3,2);
  Console.WriteLine($"El resultado de la operación es {resultado}");
}
```

```chsarp
Funciones.Calculador((x,y)=> x+y); // escribe 5
Funciones.Calculador((x,y)=> x-y); // escribe 1
```

---
### Funciones de primer orden en Elixir

```elixir
defp calculador(f) do
  IO.puts(f.(3,2))
end

def calcular() do
  calculador(fn(x,y) -> x + y end)
  calculador(fn(x,y) -> x - y end)
end
``` 

+++?image=assets/img/right.gif












