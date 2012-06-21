using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TrainingCenters
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitUserDetals_Click(object sender, EventArgs e)
        {
            ////   SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            ////SqlCommand cmd = new SqlCommand();
            ////cmd.Connection = con;
            ////cmd.CommandText = "spGetStudentPassword";
            ////cmd.CommandType = CommandType.StoredProcedure;
            ////cmd.Parameters.Add(new SqlParameter("EmailID",tbUserEmaild.Text));
            ////cmd.Parameters.Add(new SqlParameter("MobileNo",tbUserMobileNumber.Text));
           
            ////con.Open();
            ////SqlDataReader sdrI = cmd.ExecuteReader();

            ////string uName= "";
            ////string Pass = "";


            ////while (sdrI.Read())
            ////{
            ////    uName = Convert.ToString(sdrI["UserName"]);
            ////    Pass = Convert.ToString(sdrI["Password"]);
            ////}
            ////con.Close();

            ////if (uName.Length > 0)
            ////{
            

            ////    FormsAuthentication.SetAuthCookie(Mno, false);
            ////    Response.Redirect("~/Student/StudentWelcome.aspx");
            ////}
            ////else
            ////{
            ////    lblInstituteMessage.Visible = true;
            ////}

        }
        }
    }
