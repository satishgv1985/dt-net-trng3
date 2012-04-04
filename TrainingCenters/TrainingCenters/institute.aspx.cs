using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class institute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btninstsubmit_Click(object sender, EventArgs e)
        {

        }

        protected void cvUserName_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            if (tbUserName.Text.Length < 8 || tbUserName.Text.Length > 15)
                args.IsValid = false;

        }

        
        
        
    }
}