### Erlang OTP

- Conjunto de librerías y herramientas utilizadas para gestionar sistemas distribuidos.
- Inicialmente pensado para gestionar centralitas telefónicas.
- Utiliza un modelo de actores para gestionar concurrencia y paralelismo

---

### Anatomía de un proceso en Erlang/Elixir

![Modelo de actores](assets/img/proceso.png)

--- 

![Modelo de actores](assets/img/ActorModel.png)

--- 

### Diferencias de un proceso con los hilos de .NET

- Los procesos en Erlang/Elixir son muy pequeños. Cambio de contexto es muy fácil. 
- Una máquina normal puede arrancar millones de procesos
- Inmutabilidad, y no compartir memoria = no hacen falta semáforos, monitores ni cerrojos
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

---

### GenServer

---?code=src/elixir/lib/otp/genserver.ex

@[35-45](Llamadas síncronas)
@[47-53](Llamadas asíncronas)
@[17-27](Interface para llamadas síncronas)
@[9-15](Interface para llamadas asíncronas)
@[5-7]

---
### Ejemplo en funcionamiento
    
```
iex(1)> alias MadridDotNet.OTP.Calculator
alias MadridDotNet.OTP.Calculator
MadridDotNet.OTP.Calculator

iex(2)> Calculator.start_link(0, :calculadora1)
Calculator.start_link(0, :calculadora1)
{:ok, #PID<0.153.0>}

iex(3)> MadridDotNet.OTP.Supervisor.start_calculator(:calculadora1)
MadridDotNet.OTP.Supervisor.start_calculator(:calculadora1)

iex(4)> MadridDotNet.OTP.Supervisor.start_calculator(:calculadora2)
MadridDotNet.OTP.Supervisor.start_calculator(:calculadora2)
```
---

### Ejemplo en funcionamiento

```
iex(6)> Calculator.add(:calculadora1, 5)
Calculator.add(:calculadora1, 5)
:ok
iex(7)> Calculator.add(:calculadora1, 2)
Calculator.add(:calculadora1, 2)
:ok
iex(8)> Calculator.get_current(:calculadora1)
Calculator.get_current(:calculadora1)
```
---
### Ejemplo en funcionamiento

```
iex(9)> Calculator.add(:calculadora2, 2)
Calculator.add(:calculadora2, 2)
:ok
iex(10)> Calculator.mult(:calculadora2, 2)
Calculator.mult(:calculadora2, 2)
4
```
---

![observer](assets/img/observer.png)

---

### Para mantener el estado de un proceso podemos usar agente

- Un agente en Elixir, es un proceso en segundo plano que mantiene el estado
- El estado se puede consultar o modificar desde otros procesos
- El agente también puede colocarse en un árbol de supervisión

---
### Agente
---?code=src/elixir/lib/otp/agent.ex
@[2](Usamos la macro Agent)
@[4-6](Arrancamos un agente referenciado con el nombre del módulo)
@[8-14]
