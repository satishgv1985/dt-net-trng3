﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class RequestQueryStrings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReadQueryStrings.aspx?name="+txtName.Text+"&rollno="+txtRollNo.Text);
        }

        protected void btnSubmitPost_Click(object sender, EventArgs e)
        {

        }
    }
}