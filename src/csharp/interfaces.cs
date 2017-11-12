using System;

namespace MadridDotNet {


    interface CalculadorImpuestos {
        decimal Calcular(decimal importe);
    }

    public class CalculadorIVA:CalculadorImpuestos {

        public decimal Calcular(decimal importe) {
            return importe * 1.21M;
        }        
    }

    public class CalculadorIVAReducido:CalculadorImpuestos {

        public decimal Calcular(decimal importe) {
            return importe * 1.10M;
        }        
    }



    public class Interfaces {

        public static void EjecutarEjemplo1() {
            
            var calculadorIVA = new CalculadorIVA();
            var calculadorIVAReducido = new CalculadorIVAReducido();

            var iva = calculadorIVA.Calcular(20.00M);
            Console.WriteLine($"El importe con impuestos es de: {iva} €");

            var ivaReducido = calculadorIVAReducido.Calcular(20.00M);
            Console.WriteLine($"El importe con impuestos es de: {ivaReducido} €");

        }

    }


}
