using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.institute
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

       
    }
}