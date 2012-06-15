using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace TrainingCenters
{
    public partial class TCSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Request.Url.ToString().Contains("LoginPage"))
            //{
            //    if (Session["InstituteEmailID"] != null || Session["StudentEmailID"] != null)
            //    {
            //        lblName.Text = Session["StudentEmailID"].ToString();

            //    }
            //    else

            //    Response.Redirect("LoginPage.aspx");
            //}


            if (Session["InstituteEmailID"] != null || Session["StudentEmailID"] != null)
            {
                lbLoginLogout.Text = "Log Out";
            }
            else
            {
                lbLoginLogout.Text = "Log In";
            }

        }

        protected void InstituteSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AvailableInstitutes.aspx");
        }

        //protected void lbLogout_Click(object sender, EventArgs e)
        //{

        //    //Response.Redirect("LoginPage.aspx");
        //}

        protected void lbLoginLogout_Click(object sender, EventArgs e)
        {
            if (lbLoginLogout.Text.Contains("Log Out"))
            {
                Session.Abandon();

                FormsAuthentication.SignOut();
                FormsAuthentication.RedirectToLoginPage();
            }
            else
                FormsAuthentication.RedirectToLoginPage();
        }
    }
}