using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        }

        protected void btnInstituteReset_Click(object sender, EventArgs e)
        {
            tbUserEmaild.Text = "";
            tbUserPassword.Text = "";
        }

        protected void btnStudentSubmit_Click(object sender, EventArgs e)
        {
          
            
        }
    }
}