using System;

namespace MadridDotNet {


    public class Funciones
    {
        public static void EjecutarEjemplo1()
        {
            Func<int,int,int> f = (x,y) => x +y ;
            var resultado = f(2,3);
            Console.WriteLine($"El resultado de la suma es {resultado}");
        }


        public static void EjecutarEjemplo2()
        {
            int resultado  = new Func<int,int,int>((x,y) => x +y)(2,3) ;
            Console.WriteLine($"El resultado de la suma es {resultado}");
        }

        public static void EjecutarEjemplo3(){
            Funciones.Calculador((x,y)=> x+y); // escribe 5
            Funciones.Calculador((x,y)=> x-y); // escribe 1
        }

        public static void Calculador (Func<int, int, int> f) {
            var resultado = f(3,2);
            Console.WriteLine($"El resultado de la operación es {resultado}");
        }

    }
}
