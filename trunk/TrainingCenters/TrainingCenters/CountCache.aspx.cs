using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class CountCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["clickcount"] = 0;
                Cache["clickscount"] = 0;
                lblCount.Text = Cache["clickscount"].ToString();
            }
        }

        protected void lnkLinkButton_Click(object sender, EventArgs e)
        {
            if (Cache["clickscount"] != null)
            {
                //Session["clickcount"] = (int)Session["clickcount"] + 1;
                Cache["clickscount"] = (int)Cache["clickscount"] + 1;

                lblCount.Text = Cache["clickscount"].ToString();
                //}
            }
        }
    }
}