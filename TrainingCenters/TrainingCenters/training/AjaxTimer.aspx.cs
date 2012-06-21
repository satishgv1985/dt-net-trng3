using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training
{
    public partial class AjaxTimer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random r = new Random();
            int val = r.Next(1,4);
            imgDynamic.ImageUrl = "~/training/images/Image" + val + ".jpg";

        }
    }
}