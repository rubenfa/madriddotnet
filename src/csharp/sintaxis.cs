using System;

namespace Helpers{

    public class ConsoleWriter {

        private string machineName;

        public ConsoleWriter(string machine)
        {
            machineName = machine;
        }

        public void Write(string message)
        {
            string messageWithDate = ConcatDate(message);

            Console.WriteLine($"{messageWithDate} from machine {machineName}");

        }


        private string ConcatDate(string message){
            return $"{message} at {DateTime.Now}";
        }

    }
}
