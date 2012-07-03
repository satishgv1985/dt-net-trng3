using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TrainingCenters.training
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IDotNetCalculatorWCF" in both code and config file together.
    [ServiceContract]
    public interface IDotNetCalculatorWCF
    {
        [OperationContract]
        int Add(int a, int b);
        [OperationContract]
        int Subtract(int a, int b);
    }
}
