using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TrainingCenters.admin
{
    public partial class AddUpdateCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            

                #region Using SQLDataSource
                SqlDataSource sdsParentCourse = new SqlDataSource(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString, "SELECT CourseId,CourseName FROM Course");
                DataView dv = (DataView)sdsParentCourse.Select(DataSourceSelectArguments.Empty);

                foreach (DataRow item in dv.Table.Rows)
                {
                    ddlParentCourse.Items.Add(new ListItem(item.ItemArray[1].ToString(), item.ItemArray[0].ToString()));
                }

                #endregion
                ddlParentCourse.Items.Insert(0, new ListItem("--Select--", "0"));

            }
        }

        protected void btnSaveCourse_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spCourseInsert";
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.Add(new SqlParameter("CourseName", tbCourseName.Text));
                cmd.Parameters.Add(new SqlParameter("CourseShortName",tbCSName.Text));
                cmd.Parameters.Add(new SqlParameter("ParentCourseId", ddlParentCourse.SelectedValue));



                int res = cmd.ExecuteNonQuery();
                con.Close();

               

                Response.Redirect("CourseWelcome.aspx");

            }
            catch (Exception ee)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ee.StackTrace;

            }

        }
    }
}