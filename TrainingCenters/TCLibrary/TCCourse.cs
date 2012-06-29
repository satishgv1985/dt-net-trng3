using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TCLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "TCCourse" in both code and config file together.
    public class TCCourse : ITCCourse
    {
        public int DoWork(int i)
        {
            return i;
        }

        public void AddCourse(TCCr ob)
        {
        }
    }
}
