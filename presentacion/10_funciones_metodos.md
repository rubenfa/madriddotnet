### Hablemos de funciones

---
### Funciones anónimas en  C# #

```csharp
 Func<int,int,int> f = (x,y) => x +y ;
 var resultado = f(2,3); // Devuelve 5 
```

Note:
Ejemplo de definición de función anónima y llamada de la misma

---
<!-- 
### Funciones anónimas en  C# #

```csharp
// Define la función y la llama.
// Devuelve 5
int resultado  = 
       new Func<int,int,int>((x,y) => x +y)(2,3) ;
```

Note:
Definición de función y llamada en la misma línea
--- -->

### Funciones anónimas en Elixir #

```elixir
f = fn(x, y) -> x + y end
f.(3,5)
```
---

### Funciones de primer orden en C# #

```csharp
public static void Calculador (Func<int, int, int> f) {
  var resultado = f(3,2);
  Console.WriteLine($"El resultado de la operación es {resultado}");
}
```

```csharp
Funciones.Calculador((x,y)=> x+y); // escribe 5
Funciones.Calculador((x,y)=> x-y); // escribe 1
```

Note:
Una función de primer orden es una función, que recibe otra función como parámetro

---
### Funciones de primer orden en Elixir

```elixir
def calculador(f) do
  IO.puts(f.(3,2))
end

def calcular() do
  calculador(fn(x,y) -> x + y end)
  calculador(fn(x,y) -> x - y end)
end
``` 














