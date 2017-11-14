### TESTING, GESTIÓN DE PAQUETES, BUILD ...

---

### ExUnit

---?code=src/elixir/lib/testing/mytest.ex

@[16-18]
@[20-34]
@[35-37](Documentación de la función)

---?code=src/elixir/test/elixir_test.exs
@[2](Macro de ExUnit)
@[9-11]

---

### Hex

- Es el gestor de paquetes de Elixir (como Nuget)
- Válido tanto en Elixir como en Erlang


---?code=src/elixir/mix.exs

---
### Mix

- Herramienta de *build* al estilo de dotnetcli
- Crea proyectos
- Satisface dependencias
- Compila
- etc. etc. etc.

---

### Ejemplos

```
mix new madriddotnet
```

```
mix deps.get
```
---

### Ejemplos

```
mix compile
```
```
mix test
```

--- 

### Entornos

Por defecto, Mix utiliza tres entornos
- `:dev`, dónde Mix ejecuta tareas (como compilar) por defecto  
- `:test`, utilizado por Mix.test
- `:prod`, dónde se ejecuta el código de producción

---
#### Se configura con una variable de entorno

```
$ MIX_ENV=prod
```


