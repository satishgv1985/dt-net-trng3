using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TrainingCenters
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudentReset_Click(object sender, EventArgs e)
        {
            tbStudentEmald.Text = "";
            tbStudentPassword.Text = "";
            lblMessage.Visible = false;
        }

        protected void btnInstituteReset_Click(object sender, EventArgs e)
        {
            tbUserName.Text = "";
            tbUserPassword.Text = "";
            lblMessage.Visible = false;
        }

        protected void btnStudentSubmit_Click(object sender, EventArgs e)
        {
            bool validUser = true;
            string Name = "Satish";





            if (validUser)
            {
                Session["StudentEmailID"] = tbStudentEmald.Text;

                
               //Response.Redirect("StudentWelcome.aspx");
            }
            else
            {
                lblMessage.Visible = true;
            }
        }

        protected void btnInstituteSubmit_Click(object sender, EventArgs e)
        {
            // validate the email id and password against database and validate the INSTITUTE
            bool validUser = true;
            string Name = "Satish";



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spValidateUser";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
            cmd.Parameters.Add(new SqlParameter("password", tbUserPassword.Text));
            cmd.Parameters.Add(new SqlParameter("isInst", true));

            con.Open();
            SqlDataReader sdrI=cmd.ExecuteReader();

            string emailID="";
            string iName="";
            

            while (sdrI.Read())
            {
                emailID = Convert.ToString(sdrI["EmailID"]);
                iName=Convert.ToString(sdrI["InstituteName"]);
            }
            con.Close();

            if (iName.Length>0)
            {
                Session["InstituteEmailID"] = emailID;

                FormsAuthentication.SetAuthCookie(iName, false);
                Response.Redirect("~/institute/InstituteWelcome.aspx");
            }
            else
            {
                lblMessage.Visible = true;
            }
        }
    }
}