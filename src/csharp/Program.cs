using System;

namespace csharp
{
    class Program
    {
        static void Main(string[] args)
        {
            var consoler = new Helpers.ConsoleWriter("cylonmachine");

            consoler.Write("Disk space is 25%");
        }
    }
}
