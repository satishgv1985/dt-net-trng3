using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TrainingCenters
{
    /// <summary>
    /// Summary description for GetInstitutes
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    //To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class GetInstitutes : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string[] GetInst(string prefixText, int count)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "	select InstituteName from Institute  where InstituteName like '%'+@InstituteName+'%'";
            cmd.CommandType = CommandType.Text;


            cmd.Parameters.Add(new SqlParameter("InstituteName", prefixText));


            con.Open();
            SqlDataReader sdrI = cmd.ExecuteReader();
            string[] names = new string[6];


            int i = 0;
            while (sdrI.Read())
            {

                names[i] = Convert.ToString(sdrI["InstituteName"]);
                i++;
            }
            con.Close();
            return names;

        }
    }

}
