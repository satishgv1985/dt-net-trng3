using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace TCLibrary
{
    [DataContract]
    public class TCCr
    {
        public int id { get; set; }
        public string name { get; set; }
    }
}
