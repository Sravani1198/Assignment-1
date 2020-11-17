using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Create
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICalculator" in both code and config file together.
    [ServiceContract]
    public interface ICalculator
    {
        [OperationContract]
        int sum(int num1, int num2); //Addition

        [OperationContract]
        int substract(int num1, int num2); //Subtraction

        [OperationContract]
        int mul(int num1, int num2); //Multiplication

        [OperationContract]
        int div(int num1, int num2); //Division
    }
}

//use a data contract to composite types to service operations
[DataContract] //Declare and Assignthe variables
public class CompositeType
{
    bool boolvalue = true; //Boolean variables assigned true
    String stringvalue = "Hello World"; //String variable returning "Hello World"

    [DataMember] //You will call or invoke the data information
    public bool Boolvalue
    {
        get { return boolvalue; }
        set { boolvalue = value; }
    }

    [DataMember] //You will call or invoke the data information
    public string StringValue
    {
        get { return stringvalue; }
        set { stringvalue = value; }
    }
}
