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
            tbStudentUserName.Text = "";
            tbStudentPassword.Text = "";
            lblStudentMessage.Visible = false;
        }

        protected void btnInstituteReset_Click(object sender, EventArgs e)
        {
            tbUserName.Text = "";
            tbUserPassword.Text = "";
            lblInstituteMessage.Visible = false;
        }

       
           // bool validUser = true;
           //// string Name = "Satish";





           // if (validUser)
           // {
           //     Session["StudentEmailID"] = tbStudentEmald.Text;

                
           //    Response.Redirect("StudentWelcome.aspx");
           // }
           // else
           // {
           //     lblMessage.Visible = true;
           // }


        

        
        
        
        

        protected void btnInstituteSubmit_Click(object sender, EventArgs e)
        {
            



            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = con;
            //cmd.CommandText = "spValidateUser";
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
            //cmd.Parameters.Add(new SqlParameter("password", tbUserPassword.Text));
            //cmd.Parameters.Add(new SqlParameter("isInst", true));

            //con.Open();
            //SqlDataReader sdrI=cmd.ExecuteReader();

            //string emailID="";
            //string iName="";
            

            //while (sdrI.Read())
            //{
            //    emailID = Convert.ToString(sdrI["EmailID"]);
            //    iName=Convert.ToString(sdrI["StudentName"]);
            //}
            //con.Close();

            //if (iName.Length>0)
            //{
            //    Session["InstituteEmailID"] = emailID;

            //    FormsAuthentication.SetAuthCookie(iName, false);
            //    Response.Redirect("~/institute/InstituteWelcome.aspx");
            //}
            //else
            //{
            //    lblInstituteMessage.Visible = true;
            //}
        }

        protected void btnStudentSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spValidateUser";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("username", tbStudentUserName.Text));
            cmd.Parameters.Add(new SqlParameter("password", tbStudentPassword.Text));
            cmd.Parameters.Add(new SqlParameter("isInst", false));

            con.Open();
            SqlDataReader sdrS = cmd.ExecuteReader();

            string emailID = "";
            string iName = "";


            while (sdrS.Read())
            {
                emailID = Convert.ToString(sdrS["EmailID"]);
                iName = Convert.ToString(sdrS["StudentName"]);
            }
            con.Close();

            if (iName.Length > 0)
            {
                Session["StudentEmailID"] = emailID;

                FormsAuthentication.SetAuthCookie(iName, false);
                Response.Redirect("~/Student/StudentWelcome.aspx");
            }
            else
            {
                lblStudentMessage.Visible = true;
            }

        }
    }
}