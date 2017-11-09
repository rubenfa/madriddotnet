### C# puede ser un lenjuaje imperativo (¿cómo?)

```csharp
List<int> numList = new List<int> { 1, 2, 3, 4, 5 };

List<int> results = new List<int>();
foreach(var num in numList)
{
    if (num % 2 != 0)
          results.Add(num);
}

```

--- 

### Pero C# también puede ser declarativo (¿qué?)

```csharp
var results = collection.Where( num => num % 2 != 0);
```
--- 

### Elixir es funcional, pero hay que hacerlo bien

```elixir
defmodule MadridDotNet.PipeOperator do

@doc """
Función que coge un número entero y:
- extrae sus dígitos
- filtra los dígitos pares
- los multiplica por 3
- los da la vuelta 
- devuelve un string con el resultado

Ejemplo:

MadridDotNet.Pipe.PipeOperator.pipe(123456)
"18126"
"""

require Integer

  def no_pipe(n) when is_integer(n) do
    Enum.join(
      Enum.reverse(
        Enum.map(
          Enum.filter(
            Integer.digits(n), fn(x) -> 
              Integer.is_even(x) end) , fn(x) -> x * 3 end
              )))
  end

  def no_pipe2(n) when is_integer(n) do
    digits = Integer.digits(n)
    filtered = Enum.filter(digits, fn(x)-> Integer.is_even(x) end )
    digitsX = Enum.map(filtered, fn(x) -> x * 3  end)
    reversed = Enum.reverse(digitsX)
    Enum.join(reversed)
    
  end

  def pipe(n) when is_integer(n) do
    n
    |> Integer.digits
    |> Enum.filter(fn(x) -> Integer.is_even(x) end)
    |> Enum.map(fn(x)-> x * 3 end)
    |> Enum.reverse
    |> Enum.join    
  end

end
```
@[3-15]
@[19-27]
@[29-34]
@[38-45]

---

#### La programación funcional va de transformar datos
![Image-Absolute](img/functional-thinking.png)
<span style="font-size:0.6em; color:gray">See <a href="https://pragprog.com/book/elixir/programming-elixir" target="_blank"> Programming Elixir by Dave Thomas</a> </span>
---

### Además esto nos suena

```chsarp
var result =
   number.ToString()
         .Select(digit=> char.GetNumericValue(digit))
         .Where(even=> even%2 == 0)
         .Select (digit => (digit * 3).ToString())
         .Reverse();

System.Console.WriteLine(string.Join("", result));

```