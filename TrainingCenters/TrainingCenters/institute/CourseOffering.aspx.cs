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
        SqlConnection con = new SqlConnection("");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSelectAnoyherCourse_Click(object sender, EventArgs e)
        {
            String str  = ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
        }
    }
}