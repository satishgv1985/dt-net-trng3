﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training.anupam
{
    public partial class AjaxUpdateProgress : System.Web.UI.Page
    {
        protected void ShowProgress(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(5000);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}