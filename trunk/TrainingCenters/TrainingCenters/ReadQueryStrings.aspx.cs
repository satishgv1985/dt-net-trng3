using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class ReadQueryStrings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblName.Text = Request.QueryString["name"];
            lblRollNo.Text = Request.QueryString["rollno"];

            if (Request.QueryString["rollno"] != null)
            {
               
            }


            if (Request.QueryString["s"] == "t")
            {
                tblStudent.Visible = true;
                tblInstitute.Visible = false;
            }
        }
    }
}