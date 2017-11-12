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




