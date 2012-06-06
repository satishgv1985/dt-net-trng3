using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

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
            tbUserEmaild.Text = "";
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


            if (validUser)
            {
                Session["InstituteEmailID"] = tbUserEmaild.Text;

                FormsAuthentication.RedirectFromLoginPage("satish", false);
                //Response.Redirect("InstituteWelcome.aspx");
            }
            else
            {
                lblMessage.Visible = true;
            }
        }
    }
}