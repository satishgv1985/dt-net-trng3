using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.admin
{
    public partial class CoursePopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string courseId = Request.QueryString["cid"];
                lblCourseId.Text = courseId;
                txtName.Text = "xyz";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //write the code to save to db 
            ClientScript.RegisterStartupScript(typeof(string), "coursepp", "<script type='text/javascript'>funcClose()</script>");
        }
    }
}