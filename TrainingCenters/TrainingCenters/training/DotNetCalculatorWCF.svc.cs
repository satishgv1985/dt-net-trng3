using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TrainingCenters.training
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "DotNetCalculatorWCF" in code, svc and config file together.
    public class DotNetCalculatorWCF : IDotNetCalculatorWCF
    {
        public int Add(int a, int b)
        {
            return a + b;

        }
        public int Subtract(int a, int b)
        {
            return a - b;
        }
    }
}
