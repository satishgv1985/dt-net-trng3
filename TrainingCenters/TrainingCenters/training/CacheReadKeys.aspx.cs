﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training
{
    public partial class CacheReadKeys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblClass.Text = Convert.ToString(Cache["class"]);
        }
    }
}