using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class Technique_Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie hc = new HttpCookie("rollno1", "900");
                Response.SetCookie(hc);
                
            }
            //lblRollNo.Text = Request.Cookies["rollno1"].Value;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblRollNo.Text = Request.Cookies["rollno1"].Value;

        }
    }
}