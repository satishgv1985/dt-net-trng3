using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using TCBusinessLogic.DTO;
using TCBusinessLogic.DAL;

namespace TrainingCenters.training.shiva
{
    /// <summary>
    /// Summary description for GetStusentByUserName
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GetStusentByUserName : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public StudentDTO GetStudentDetails(string UserName)
        {
            StudentDTO stu = StudentDal.GetStudentByUserName(UserName);
            return stu;
        }
    }
}
