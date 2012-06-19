using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.student
{
    public partial class StudentWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentEmailID"] != null)
             lblName.Text =Session["StudentEmailID"].ToString();
            else
                Response.Redirect("LoginPage.aspx");


           
        }
    }
}