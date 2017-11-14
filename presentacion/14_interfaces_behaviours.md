### Polimorfismo

---
### En C# podemos usar interfaces #

```csharp
interface CalculadorImpuestos {
    decimal Calcular(decimal importe);
}

public class CalculadorIVA:CalculadorImpuestos {
    public decimal Calcular(decimal importe) {
        return importe * 1.21M;
    }
}

public class CalculadorIVAReducido:CalculadorImpuestos {
    public decimal Calcular(decimal importe) {
        return importe * 1.10M;
    }
}

```
---
### En Elixir tenemos Behaviours

```elixir
defmodule CalculadorImpuestos do
  @callback calcular(importe)
end module

defmodule CalculadorIVAReducido do
  @behaviour CalculadorImpuestos
 
  def calcular(importe) do
    importe * 1.10
  end
end

defmodule CalculadorIVASuperReducido do
  @behaviour CalculadorImpuestos

  def calcular(importe) do
    importe * 1.04
  end
end
```

@[1-3]
@[5-10]
@[6]
@[13-19]

--- 
### Pero en Elixir también tenemos Protocols

```elixir
defprotocol Size do
  @doc "Calculates the size (and not the length!) of a data structure"
  def size(data)
end
```
[Getting Started Elixir lang](http://elixir-lang.github.io/getting-started/protocols.html)

---
### Implementaciones
```elixir
defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
  def size(map), do: map_size(map)
end

defimpl Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
end
```

[Getting Started Elixir lang](http://elixir-lang.github.io/getting-started/protocols.html)
