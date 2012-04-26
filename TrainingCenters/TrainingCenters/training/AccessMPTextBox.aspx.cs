using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training
{
    public partial class AccessMPTextBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hfSearchTerm.Value = Request.QueryString["searchTerm"];
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            TextBox tx = (TextBox)this.Master.FindControl("txtName");
            lblName.Text = tx.Text;
        }
    }
}