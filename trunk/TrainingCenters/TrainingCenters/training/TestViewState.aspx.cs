using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training
{
    public partial class TestViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                ViewState["val"] = "satish";
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string viewStateVal = Convert.ToString(ViewState["val"]);

            txtpass.Text = viewStateVal;
        }
    }
}