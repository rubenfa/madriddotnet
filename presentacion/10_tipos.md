### TIPOS
#### Listas en Elixir
```
iex(14)> [1,2, true, "cuatro", 5]
[1, 2, true, "cuatro", 5]
iex(15)> [1,2,6,7] ++ [4,5]
[1, 2, 6, 7, 4, 5]
iex(16)> [1,2,true,3,4,false] -- [true,false]
[1, 2, 3, 4]
``` 
---

### TIPOS
#### Listas en C# #

```csharp
var lista = new List<object>();
lista.add(1);
lista.add(2);
lista.add(true);
lista.add("cuatro");
```
---

### TIPOS
#### Listas clave valor, en Elixir

``` elixir
iex(23)> [{:nombre, "Rubén"}, {:apellido,"Fernández"}, {:edad, 22}]
[nombre: "Rubén", apellido: "Fernández", edad: 22]
iex(24)> [nombre: "Rubén", apellido: "Fernández", edad: 22]
[nombre: "Rubén", apellido: "Fernández", edad: 22]
iex(25)> persona = [nombre: "Rubén", apellido: "Fernández", edad: 22]
[nombre: "Rubén", apellido: "Fernández", edad: 22]
iex(26)> persona[:nombre]
"Rubén"
```
@[1-2]
@[3-4]
@[5-8]

---

### TIPOS
#### Tuplas en Elixir

``` elixir
result = {1, :error, "Variable not found"}
{1, :error, "Variable not found"}
iex(19)> {result_value, _, result_message} = result
{1, :error, "Variable not found"}
iex(20)> result_value
1
iex(22)> result_message
"Variable not found"
``` 
@[1-2]
@[3-4]
@[5-10]

---

### TIPOS
#### Tuplas en C# #

```csharp
var tupla = new Tuple<int, string, string>(0, "error", "Variable not found");
var code = tupla.Item1;
var resultType = tupla.Item2;
var message = tupla.Item3;

```csharp
(int code, string resultType, string message) = (0, "error", "Variable not found");
```
---

### TIPOS
#### Tuplas en C# #

```csharp
public static (int code, string resultType, string message) GetErrorCode() {
  return (code: 0, resultType: "error", message: "Variable not found");
}
```

```csharp
var (code, _, message) = GetErrorCode();
Console.WriteLine($"Code: {code}, Message: { message}");
```

---

### TIPOS
#### Estructuras en Elixir

```elixir
defmodule Persona do
    defstruct nombre: "", apellido: "", edad: 0
end
```

```
iex(2)> persona = %Persona{nombre: "Rubén", apellido: "Fernández", edad: 22}
%Persona{apellido: "Fernández", edad: 22, nombre: "Rubén"}
iex(3)> persona.edad
22
iex(4)> persona.nombre
"Rubén"
```
---

### TIPOS
#### Maps

``` elixir
iex(27)> %{ :nombre => "Rubén", "apellido" => "Fernández", 22 => false} 
%{22 => false, :nombre => "Rubén", "apellido" => "Fernández"}
iex(29)> persona = %{ :nombre => "Rubén", "apellido" => "Fernández", 22 => false}
%{22 => false, :nombre => "Rubén", "apellido" => "Fernández"}
iex(30)> persona[22]
false
```
---

### TIPOS
#### Atoms
```
iex(9)> :uno
:uno
iex(10)> :dos
:dos
iex(11)> :uno == String.to_atom("uno")
true
```



