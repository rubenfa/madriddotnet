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


