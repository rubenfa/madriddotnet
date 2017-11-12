### Erlang OTP

- Conjunto de librerías y herramientas utilizadas para gestionar sistemas distribuidos.
- Inicialmente pensado para gestionar centralitas telefónicas.
- Utiliza un modelo de actores para gestionar concurrencia y paralelismo

---

### Anatomía de un proceso en Erlang/Elixir

- Un proceso tiene un tamaño aproximado de 1KB (2KB en 64 bits)
- Un proceso tiene su stack de memoria, un recolector de basura y un buzón de mensajes
- Un proceso solo se comunica con otros procesos a través de su buzón de mensajes
- Erlang es tolerante a fallos
- Erlang permite la actualización en caliente de los procesos.

--- 

![Modelo de actores](assets/img/ActorModel.png)

--- 

### Diferencias con los hilos de .NET

- Los procesos en Erlang/Elixir son muy pequeños, por lo que el cambio de contexto es muy fácil. Una máquina normal puede arrancar millones de procesos
- Debido a la inmutabilidad, y que los procesos no comparten memoria, no hacen falta semáforos, monitores ni cerrojos
- El recolector de basura es muy sencillo, porque solo tiene que controlar un pequeño proceso, con su propia memoria
- Como los procesos son independientes, un proceso no puede bloquear a otros (salvo que sean procesos cooperativos y se produzca un ciclo)

---

![app supervisor](assets/img/appsupervisor.png)

---

### Gestión de los procesos con distintas estrategias

![one for all](assets/img/one_for_all.png)

---

### Gestión de los procesos con distintas estrategias

![one for one](assets/img/one_for_one.png)

---

### Gestión de los procesos con distintas estrategias

![rest for one](assets/img/rest_for_one.png)

footnote : "<a href='https://elixirschool.com/es/lessons/advanced/error-handling/'>Ejemplo de Elixir School</a>"

---

#### Fail fast. ¿Para qué capturar errores?

```elixir
try do
  opts
  |> Keyword.fetch!(:source_file)
  |> File.read!
rescue
  e in KeyError -> IO.puts "missing :source_file option"
  e in File.Error -> IO.puts "unable to read source file"
end

```
@[](<a href='https://elixirschool.com/es/lessons/advanced/error-handling/'>Ejemplo de Elixir School</a>")


