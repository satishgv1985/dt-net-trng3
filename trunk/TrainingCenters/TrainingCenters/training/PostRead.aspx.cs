using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training
{
    public partial class PostRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox tb = (TextBox)PreviousPage.FindControl("txtName");
            lblName.Text = tb.Text;
            
        }
    }
}