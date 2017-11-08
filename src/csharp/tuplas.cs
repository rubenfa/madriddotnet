using System;

namespace MadridDotNet {


    public class Tuplas {


        public static void EjecutarEjemplo() {

            (int code, string resultType, string message) = (0, "error", "Variable not found");

            Console.WriteLine($"Code: {code}, Type: {resultType}, Message: { message}");

            var tupla = new Tuple<int, string, string>(0, "error", "Variable not found");

        }

        public static void EjecutarEjemplo2() {
            var (code, _, message) = GetErrorCode();
            Console.WriteLine($"Code: {code}, Message: { message}");
        }

        public static (int code, string resultType, string message) GetErrorCode() {
            return (code: 0, resultType: "error", message: "Variable not found");
        }

    }



}
