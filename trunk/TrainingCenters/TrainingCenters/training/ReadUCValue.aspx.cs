using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training
{
    public partial class ReadUCValue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox txCity = (TextBox)userdatauc.FindControl("txtCity");
                txCity.Text = "database value";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            TextBox txCity = (TextBox)userdatauc.FindControl("txtCity");
            lblValue.Text = txCity.Text;
        }
    }
}