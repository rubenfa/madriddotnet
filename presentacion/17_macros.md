### Elixir permite utilizar macros

- Con macros podemos hacer metaprogramación, es decir podemos extender el lenguaje
- Una macro es código que escribe código

---
#### La primera regla de las macros, es que no escribas macros (al menos si lo puedes hacer con una función)

![no](assets/img/nono.gif)

---

### AST (Abstract Syntax Tree)

- Muchos lenguajes manejan arboles de expresión (C# tiene `Expression<T>`)
- Elixir puede manejar los árboles de expresión como estructuras de datos

---

### AST (Abstract Syntax Tree)

- Cada instrucción que escribimos en Elixir se representa con una tupla de tres elementos

```
iex(1)> quote do 1 + 2 end
{:+, [context: Elixir, import: Kernel], [1, 2]}
```

- Un atom con la llamada a la función, o otra tupla, representando otro nodo AST 
- Metadatos sobre la expresión |
- Lista de parámetros |

---
### Un ejemplo más complejo

+++?image=assets/img/ast.png?size=auto 90%

[Metaprogramming Elixir](https://pragprog.com/book/cmelixir/metaprogramming-elixir)

---
### La macro unless

```elixir
unless 5==2 do
  "enter"
end
````
--- 
```elixir
defmodule ControlFlow do
  defmacro unless(expression, do: block) do
    quote do
      if !unquote(expression), do: unquote(block)
    end
  end
end
```
@[2]
@[3-5]
@[4]

[Metaprogramming Elixir](https://pragprog.com/book/cmelixir/metaprogramming-elixir)

---

![Macro Expansion](assets/img/macroexpansion.png)

[Metaprogramming Elixir](https://pragprog.com/book/cmelixir/metaprogramming-elixir)
