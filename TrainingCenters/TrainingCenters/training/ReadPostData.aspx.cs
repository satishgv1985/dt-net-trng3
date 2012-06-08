using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class ReadPostData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // if previous page is null 
            TextBox tb = (TextBox)PreviousPage.FindControl("txtName");
            lblName.Text = tb.Text;

            HiddenField hf = (HiddenField)PreviousPage.FindControl("hdnPageID");
            lblName.Text += "  " + hf.Value;
        }
    }
}