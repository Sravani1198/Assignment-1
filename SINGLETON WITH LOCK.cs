using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SingletonDesignPattern
{
    class Example
    {
       private static void Main(string[] args)
        {
            Mysingleton Object = Mysingleton.sravs;
            Object.check();
            singleton obj1 = singleton.sravs;
            obj1.worked();
            Console.ReadKey();
        }
    }
    public class Mysingleton
    {
        //Private Constructor
        private Mysingleton() { }

        private static Mysingleton instance = null; //Instance getting assigned to null

        public static Mysingleton sravs
        {
            get
            {
                if (instance == null)  //If instance found true then singleton design pattern will be thread unsafe
                {
                    instance = new Mysingleton();
                }
                return instance;
            }
        }

        public void check()
        {
            Console.WriteLine("If the instance been null the singleton pattern will be thread unsafe ");
        }
    }
}
public sealed class singleton
{
    //Private constructor
    singleton() { }
    private static readonly object find = new object(); //Find whether any of instance are null
    private static singleton instance = null;
    public static singleton sravs
    {
        get
        {
            lock(find) //lock the empty/null instance, so that it would not execute further if instance found null that means thread is unsafe
            {
                if(instance == null)
                {
                    { instance = new singleton(); }
                }
                return instance;
            }
        }
    }
    public void worked()
    {
        Console.WriteLine("We have locked the null instance to make sure SDP thread safe");
    }
}
        

    

