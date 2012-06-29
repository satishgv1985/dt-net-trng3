using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TrainingCenters.training
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IServiceInstitute" in both code and config file together.
    [ServiceContract]
    public interface IServiceInstitute
    {
        [OperationContract]
        void Add(TCInstitute i);
        TCInstitute GetInstituteDetailsById(int id);
    }

    [DataContract]
    public class TCInstitute
    {
        public int InstituteId { get; set; }
        public string InstituteName { get; set; }
    }
}
