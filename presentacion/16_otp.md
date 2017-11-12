### Erlang OTP

- Conjunto de librerías y herramientas utilizadas para gestionar sistemas distribuidos.
- Inicialmente pensado para gestionar centralitas telefónicas.
- Utiliza un modelo de actores para gestionar concurrencia y paralelismo

---

### Anatomía de un proceso en Erlang/Elixir

- Tamaño aproximado de 1KB (2KB en 64 bits)
- Cad proceso tiene su stack de memoria, un recolector de basura y un buzón de mensajes
- Solo se comunica con otros procesos a través de su buzón de mensajes
- Se puede actualizar en caliente

--- 

![Modelo de actores](assets/img/ActorModel.png)

--- 

### Diferencias con los hilos de .NET

- Los procesos en Erlang/Elixir son muy pequeños, por lo que el cambio de contexto es muy fácil. Una máquina normal puede arrancar millones de procesos
- Inmutabilidad, y no compartir memoria  = no hacen falta semáforos, monitores ni cerrojos
- Recolector de basura muy simple. Solo controla un proceso, y su memoria
- Procesos independientes. Un proceso no puede bloquear a otros* 

---

![app supervisor](assets/img/appsupervisor.png)

[Designing for scalability with Erlang/OTP](https://www.amazon.es/Designing-Scalability-Erlang-OTP-Fault-Tolerant/dp/1449320732)

---

### Gestión de los procesos con distintas estrategias

![one for all](assets/img/one_for_all.png)

[Designing for scalability with Erlang/OTP](https://www.amazon.es/Designing-Scalability-Erlang-OTP-Fault-Tolerant/dp/1449320732)

---

### Gestión de los procesos con distintas estrategias

![one for one](assets/img/one_for_one.png)

[Designing for scalability with Erlang/OTP](https://www.amazon.es/Designing-Scalability-Erlang-OTP-Fault-Tolerant/dp/1449320732)

---

### Gestión de los procesos con distintas estrategias

![rest for one](assets/img/rest_for_one.png)

[Designing for scalability with Erlang/OTP](https://www.amazon.es/Designing-Scalability-Erlang-OTP-Fault-Tolerant/dp/1449320732)

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

[Ejemplo de Elixir School](https://elixirschool.com/es/lessons/advanced/error-handling/)


