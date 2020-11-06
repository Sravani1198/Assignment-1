using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace solidDesignPattern
{
    //single responsibity principle
    public interface IMessageServer
    {
        bool Send(IMessage message);
    }

    public interface IMessage
    {
        IList<String> ToAddresses { get; set; }
        string MessageBody { get; set; }
    }

    public interface IEmailMessage : IMessage
    {
        string Subject { get; set; }
        IList<String> BccAddresses { get; set; }
    }

    public class SmtpMessage : IEmailMessage
    {
        public IList<String> ToAddresses { get; set; }
        public IList<String> BccAddresses { get; set; }
        public string MessageBody { get; set; }
        public string Subject { get; set; }
    }

    public class SmsMessage : IMessage
    {
        public IList<String> ToAddresses { get; set; }
        public string MessageBody { get; set; }
    }

    public class SmsMessageServer : IMessageServer
    {
        public bool Send(IMessage message)
        {
           
            return true;
        }
    }

    public class SmtpMessageServer : IMessageServer
    {
        public bool Send(IMessage message)
        {
            
            return true;
        }
    }
    //open close principle
    class CreditCard
    {
        public virtual double GetDiscount(double monthlyCost)
        {
            return 0.0;
        }
    }

    class BronzeCreditCard : CreditCard
    {
        public override double GetDiscount(double monthlyCost)
        {
            return monthlyCost * 0.01;
        }
    }

    class SilverCreditCard : CreditCard
    {
        public override double GetDiscount(double monthlyCost)
        {
            return monthlyCost * 0.02;
        }
    }

    class GoldCreditCard : CreditCard
    {
        public override double GetDiscount(double monthlyCost)
        {
            return monthlyCost * 0.05;
        }
    }


    //Liskov substitution principle
    public class Rectangle
    {
        public double Height { get; set; }
        public double Width { get; set; }
    }

    public class Square : Rectangle
    {
        public Square CreateSquare(double w)
        {
            var newSquare = new Square
            {
                Height = w,
                Width = w
            };
            return newSquare;
        }
    }

    //interface segregation principle
    public interface IOrder
    {
        void Purchase();
    }

    public interface IOnlineOrder
    {
        void ProcessCreditCard();
    }

    public class OnlineOrder : IOrder, IOnlineOrder
    {
        public void Purchase()
        {
            Console.WriteLine("online purchase with cash");
        }

        public void ProcessCreditCard()
        {
            Console.WriteLine("online purchase with card");

        }
    }

    public class InpersonOrder : IOrder
    {
        public void Purchase()
        {
            Console.WriteLine("Inpurchase with cash");

        }
    }

    //Dependancy inversion principle
    public interface IService
    {
        void Serve();
    }
    public class Service : IService
    {
        public void Serve()
        {
            Console.WriteLine("Service Called");

            //To Do: Business Logic
        }
    }
    public class Client
    {
        private IService _service;

        public Client(IService service)
        {
            this._service = service;
        }
        public void Start()
        {
            Console.WriteLine("Service Started");
            this._service.Serve();
            //To Do: Business Logic
        }
    }
    class SOLID
    {
        static void Main(string[] args)
        {
            Client c = new Client(new Service());
            c.Start();
            CreditCard cc = new CreditCard();
            cc.GetDiscount(8500.53343);
            Square s = new Square();
            s.CreateSquare(5.585);
            OnlineOrder o = new OnlineOrder();
            o.ProcessCreditCard();
            o.Purchase();
            InpersonOrder i = new InpersonOrder();
            i.Purchase();
            Console.ReadLine();
        }
    }
}
