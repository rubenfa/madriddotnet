#### Hablemos de recursividad

!(assets/img/handson.png)


---

### En C# podemos usar recursividad #

```csharp
static void Main(string[] args)
{
    Console.WriteLine("Please enter a number");
    int number = Convert.ToInt32(Console.ReadLine());
    Fibonacci(0, 1, 1, number);
}

public static void Fibonacci(int a, int b, int counter, int number)
{
    Console.WriteLine(a);
    if (counter < number) Fibonacci(b, a+b, counter+1, number);
}`
```

---

#### ¿Y la optimización por recursividad de cola? 


- Hablamos de recursividad de cola cuando la última llamada de un método o función es recursiva.
- Hablamos de optimización de recursividad de cola, cuando el compilador puede optimizar las llamadas.

---

### Recursividad de cola en C#
#### ¿Qué pasa si pasamos 1000000 al método?

```csharp
public static void TheFinalCountdown(int n) {

     if (0 >= n--) {
         Console.WriteLine("Is the final countdown !!!!");
         return;
     }

     TheFinalCountdown(n);
}
```
---

![StackOverflow](assets/img/stackoverflow.jpg)

+++?image=assets/img/surprised.gif

- C# no permite la optimización de llamadas recursivas de cola (al menos en algunos casos)
- F# si lo permite

---

### Elixir, sí hace optimización de llamadas recursivas de cola

```elixir
 def the_final_countdown(n) do

    if n == 0 do
      IO.puts("It's the final countdown !!!")
    else
      the_final_countdown(n-1)
    end

  end
```

#### Recursividad y Pattern Matching (listas)
```elixir
defmodule MadridDotNet.PatternMatching.Lists do

  def sum([]), do: 0
  def sum([head | []]), do: head 
  def sum([head |tail]), do:  head + sum(tail)
 
end
```

---




