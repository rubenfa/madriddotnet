using System.Linq;
using System.Collections.Generic;

namespace MadridDotNet {

    public class Mutable {

        private readonly List<int> Numbers = new List<int>()  {1, 2, 3};

        public Mutable(int number) {
            Numbers.Add(number);
        }
    }
}
