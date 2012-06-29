using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TCLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ITCCourse" in both code and config file together.
    [ServiceContract]
    public interface ITCCourse
    {
        [OperationContract]
        int DoWork(int i);
        [OperationContract]
        void AddCourse(TCCr obj);
    }
}
