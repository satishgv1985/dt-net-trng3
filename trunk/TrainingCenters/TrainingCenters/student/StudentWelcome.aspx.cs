using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TCBusinessLogic.DTO;

namespace TrainingCenters.student
{
    public partial class StudentWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentDetails"] != null)
            {
                StudentDTO stud = (StudentDTO)Session["StudentDetails"];
                lblName.Text = stud.StudentName; 
            }
            else
                Response.Redirect("~/LoginPage.aspx");



        }
    }
}