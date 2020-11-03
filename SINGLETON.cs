using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SingletonDesinPettern
{
    class Singleton
    {
        public class mytest
        {
            private static mytest sravs = new mytest();
            private mytest() { }

            public static mytest example
            {
                get { return sravs; }
            }
            static void Main(string[] args)
            {

                Mysingleton Object = Mysingleton.sravani;
                Mysingleton Object1 = Mysingleton.World;
                Object.DoSomething();
                Object.Text();
                Console.ReadKey();
            }
        }
    }
    public class Mysingleton //Mysingleton class <<==This class has only instance
    {
        private static Mysingleton obj = new Mysingleton(); //Single Instance is created for the class : Mysingleton
        private Mysingleton() { }

        public static Mysingleton sravani //Trying to find whether instance is created or not
        {
            get { return obj; }
        }
        public static Mysingleton World
        {
            get { return obj; }
        }
        public void DoSomething() //Method checking whether instance working or not
        {
            Console.WriteLine("Singleton class is working ");
        }
        public void Text() //Method checking whether instance working or not
        {
            Console.WriteLine("Object/Instance for singleton always remains one");
        }
    }
}

