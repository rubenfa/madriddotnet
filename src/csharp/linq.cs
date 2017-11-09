using System.Collections;
using System.Collections.Generic;
using System.Linq;



namespace MadridDotNet {

    public class LinqExample {


        public static void EjecutarEjemplo1(int number) {

          var result =
              number.ToString()
                    .Select(digit=> char.GetNumericValue(digit))
                    .Where(even=> even%2 == 0)
                    .Select (digit => (digit * 3).ToString())
                    .Reverse();

          System.Console.WriteLine(string.Join("", result));
        }
    }
}
