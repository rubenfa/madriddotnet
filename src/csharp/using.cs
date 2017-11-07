using System.Linq;
using System.Collections;
using C = System.Collections.Generic;

namespace MadridDotNet.Using
{
    public class Alias
    {
        public static C.List<string>  GenerateList()
        {
            return new C.List<string>() {"one", "two", "three"};
        }
    }
}






