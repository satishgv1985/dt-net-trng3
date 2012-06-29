using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TrainingCenters.training
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ServiceInstitute" in code, svc and config file together.
    public class ServiceInstitute : IServiceInstitute
    {
        public void Add(TCInstitute i)
        {

        }
        public TCInstitute GetInstituteDetailsById(int id)
        {
            TCInstitute tc = new TCInstitute();
            return tc;
        }

    }
}
