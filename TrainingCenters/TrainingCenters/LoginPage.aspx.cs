using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using TCBusinessLogic.DAL;
using TCBusinessLogic.DTO;

namespace TrainingCenters
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudentReset_Click(object sender, EventArgs e)
        {
            tbStudentUserName.Text = "";
            tbStudentPassword.Text = "";
            lblStudentMessage.Visible = false;
        }

        protected void btnInstituteReset_Click(object sender, EventArgs e)
        {
            tbUserName.Text = "";
            tbUserPassword.Text = "";
            lblInstituteMessage.Visible = false;
        }

       
           // bool validUser = true;
           //// string Name = "Satish";





           // if (validUser)
           // {
           //     Session["StudentEmailID"] = tbStudentEmald.Text;

                
           //    Response.Redirect("StudentWelcome.aspx");
           // }
           // else
           // {
           //     lblMessage.Visible = true;
           // }

        protected void btnInstituteSubmit_Click(object sender, EventArgs e)
        {
           InstituteDTO ins= InstituteDAL.ValidateInstitute(tbUserName.Text, tbUserPassword.Text);

            if (ins!=null)
            {
                Session["InstituteDetails"] = ins;

                FormsAuthentication.SetAuthCookie(ins.InstituteName, false);
                Response.Redirect("~/institute/InstituteWelcome.aspx");
            }
            else
            {
                lblInstituteMessage.Text = "Login failed. try again";
                lblInstituteMessage.Visible = true;
            }
        }

        protected void btnStudentSubmit_Click(object sender, EventArgs e)
        {
           //InstituteDTO ins = InstituteDAL.ValidateInstitute(tbUserName.Text, tbUserPassword.Text);
            StudentDTO stu = StudentDal.ValidateStudent(tbStudentUserName.Text, tbStudentPassword.Text);

            if (stu != null)
            {
                Session["StudentDetails"] = stu;

                FormsAuthentication.SetAuthCookie(stu.StudentName, false);
                Response.Redirect("~/student/StudentWelcome.aspx");
            }
            else
            {
               lblStudentMessage.Text = "Login failed. try again";
               lblStudentMessage.Visible = true;
            }
        

        }
    }
}