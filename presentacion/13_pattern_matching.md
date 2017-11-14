### Pattern Matching

![Image-Absolute](assets/img/pattern-matching.jpg)

Note:
Killer feature de Elixir. Muy fácil de usar. Hace el código mucho más expresivo.
---

#### El símbolo `=` se conoce como *match operator*

```
iex(1)> x = 1
x = 1
1

iex(2)> 1 = x
1 = x
1

iex(3)> 2 = x
2 = x
** (MatchError) no match of right hand side value: 1
``` 

--- 
#### Elixir siempre intenta hacer Pattern Matching

```
iex(3)> {a, b, c} = {1, 2, 3}
{a, b, c} = {1, 2, 3}
{1, 2, 3}

iex(4)> a
a
1

iex(7)> {x, y, z} = {100, 200}
{x, y, z} = {100, 200}
** (MatchError) no match of right hand side value: {100, 200}
```
@[1-3]
@[5-7]
@[9-11]

---
#### Elixir siempre intenta hacer Pattern Matching

```
iex(1)> {:ok, message} = {:ok, "Proceso terminado correctamente"}
{:ok, message} = {:ok, "Proceso terminado correctamente"}
{:ok, "Proceso terminado correctamente"}

iex(2)> {:ok, message} = {:error, "El proceso ha fallado"}
{:ok, message} = {:error, "El proceso ha fallado"}
** (MatchError) no match of right hand side value: {:error, "El proceso ha fallado"}
```
@[1-3]
@[5-7]

---
#### Elixir siempre intenta hacer Pattern Matching

```
iex(4)> a = [1, 2, 3]
a = [1, 2, 3]
[1, 2, 3]

iex(5)> [1, 3, 2] = a
[1, 3, 2] = a
** (MatchError) no match of right hand side value: [1, 2, 3]
```
@[1-3]
@[5-7]

---
#### También en las sentencias condicionales

```elixir
 case remote_service_call(1) do
      {:ok, value } -> IO.puts(value)
      {:error, message} -> IO.puts(message)
      _ -> IO.puts("Result not macthed")
 end
```
---

#### Pattern Matching en funciones (con cláusulas de guarda)

```elixir
defmodule MadridDotNet.PatternMatching.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) when s == 0, do: IO.puts("Hello world")
  defp get_message(s) when s == 1, do: IO.puts("Hello MadridDotNet")
  defp get_message(s) when s == 2, do: IO.puts("Hello dotneters")
  defp get_message(s), do: {:error, "Message not found"} 

end
```
@[7-9]
@[10]
---
#### Pattern Matching (tuplas)
```elixir
defmodule MadridDotNet.PatternMatching.Tuples do

  def calculate({:sum, x, y}), do: x + y
  def calculate({:res, x, y}), do: x - y
  def calculate({:mul, x, y}), do: x * y
  def calculate({:div, x, y}), do: x / y
  def calculate(other), do: {:error, "Operation not valid"}

end
```
@[3-6]
@[7]

---

#### Recursividad y Pattern Matching (listas)
```elixir
defmodule MadridDotNet.PatternMatching.Lists do

  def sum([]), do: 0
  def sum([head | []]), do: head 
  def sum([head |tail]), do:  head + sum(tail)
 
end
```

---

#### Pattern Matching (estructuras)
```elixir
defmodule MadridDotNet.PatternMatching.Player do
  defstruct name: "", level: 1, type: :warrior, health: 100, alive: true

  alias MadridDotNet.PatternMatching.Player

  def attack(%Player{alive: false}, _, _ ) do
    {:error, "A dead player cannot attack"}
  end

  def attack(_,  %Player{alive: false}, _ ) do
    {:error, "A player cannot attack a dead player"}
  end

  def attack(p1 = %Player{type: :warrior}, p2 = %Player{type: :wizard}, damage) do
    update_health(p2, damage*2)
  end

  def attack(_, p2 = %Player{}, damage) do
    update_health(p2, damage)
  end

  defp update_health(p = %Player{health: h}, damage) when h <= damage do
    %{p | health: 0, alive: false}
  end

  defp update_health(p = %Player{health: h}, damage)  do
    %{p | health: (p.health - damage)}
  end
end
```
@[6-12]
@[14-20]

---

#### Hay que favorecer el uso de Pattern Matching en funciones siempre que se pueda

```elixir
defmodule MadridDotNet.PatternMatching.FizzBuzzSinPattern do

  def start(numbers) do
    Enum.each(numbers, fn(x) -> check(x) end)
  end

  defp check(number) do
    cond do
      rem(number, 15) == 0 -> IO.puts("FizzBuzz")
      rem(number, 3) == 0 -> IO.puts("Fizz")
      rem(number, 5) == 0 -> IO.puts("Buzz")
      true -> IO.puts("#{number}")
    end
  end

end
```

Note:
típico ejemplo FizzBuzz sin utilizar pattern matching. No queda mal, pero se puede mejorar
---

```elixir
defmodule MadridDotNet.PatternMatching.FizzBuzz do

  def start(numbers) do
    Enum.each(numbers, fn(x) -> check(x) end)
  end

  defp check(number) when rem(number, 15) == 0, do:  IO.puts("FizzBuzz")
  defp check(number) when rem(number, 3) == 0, do:   IO.puts("Fizz")
  defp check(number) when rem(number, 5) == 0, do:   IO.puts("Buzz")
  defp check(number), do: IO.puts("#{number}")
ends
```
---

#### En C# 7 ya podemos usarlo

```csharp
switch (shape)
{
   case Square s when s.Side == 0:
   case Circle c when c.Radius == 0:
       return 0;

   case Square s:
       return s.Side * s.Side;
   case Circle c:
       return c.Radius * c.Radius * Math.PI;
   default:
       throw new ArgumentException(
          message: "shape is not a recognized shape",
          paramName: nameof(shape));
}
```

---

#### En definitiva para mí el pattern matching es magia

![Go](assets/img/magic.gif)


