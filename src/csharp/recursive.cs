using System;

namespace MadridDotNet {

    public class Recursividad {

        public static void TheFinalCountdown(int n) {

            if (0 >= n--) {
                Console.WriteLine("Is the final countdown!!!");
                return;
            }

            TheFinalCountdown(n);
        }
    }
}
