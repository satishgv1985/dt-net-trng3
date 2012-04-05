using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class Technique_ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
                ViewState["rollno"] = "900";

            if (ViewState["rollno"] != null)
                lblRollNo.Text = Convert.ToString(ViewState["rollno"]);
            else
                lblRollNo.Text = "No value in viewstate";
           
        }
    }
}