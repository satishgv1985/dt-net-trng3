using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class InstituteWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InstituteEmailID"] != null)
                lblName.Text = Session["InstituteEmailID"].ToString();
            else
                Response.Redirect("LoginPage.aspx");

        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
    }
}