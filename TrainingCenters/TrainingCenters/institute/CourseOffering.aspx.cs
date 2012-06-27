using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace TrainingCenters.institute
{
    public partial class CourseOffering : System.Web.UI.Page
            {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSelectAnoyherCourse_Click(object sender, EventArgs e)
        {
            String str  = ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(str);

             SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "dbo.CourseOffering";
               // cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                TextBox tbInstituteName = (TextBox)ucInstitute.FindControl("tbInstituteName");
                cmd.Parameters.Add(new SqlParameter("CourseOfferingID", tbInstituteName.Text));

                 tbCourseName = (TextBox)ucInstitute.FindControl("tbCourseName");
                cmd.Parameters.Add(new SqlParameter("CourseID",tbCourseName.Text));


                TextBox tbCourseDuration = (TextBox)ucInstitute.FindControl("tbCourseDuration");
                cmd.Parameters.Add(new SqlParameter("", tbCourseDuration.Text));


                 tbCourseTimings = (TextBox)ucInstitute.FindControl("tbCourseTimings");
                cmd.Parameters.Add(new SqlParameter("Timings", tbCourseTimings.Text));


                 tbCourseFee = (TextBox)ucInstitute.FindControl("tbCourseFee");
                cmd.Parameters.Add(new SqlParameter("Fees", tbCourseFee.Text));


                tbFacultyDetails = (TextBox)ucInstitute.FindControl("tbFacultyDetails");
                cmd.Parameters.Add(new SqlParameter("Description", tbFacultyDetails.Text));


                TextBox tbContacUs = (TextBox)ucInstitute.FindControl("tbContacUs");
                cmd.Parameters.Add(new SqlParameter("", tbContacUs.Text));

             cmd.ExecuteNonQuery();
                con.Close();
               

            }
            
        
    }
}