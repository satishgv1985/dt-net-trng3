using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.institute
{
    public partial class InstituteSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInstituteSearch_Click(object sender, EventArgs e)
        {
            bool validUser = true;
            string Name = "Drona";
            if (validUser)
            {

                Session["InstitueName"] = tbInstituteName.Text;
                Response.Redirect("StudentWelcome.aspx");
            }
            else
            {
                lblInstituteName.Visible = true;
            }

        }

       
    }
}