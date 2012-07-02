using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TrainingCenters
{
    public partial class HomeTrainingCenter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request.QueryString["cn"];
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                try
                {
                    cmd.CommandText = "spSearchCourseOfferingInstitutes";
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    con.Close();
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                catch (Exception exp)
                {
                   
                }

            }

        }
    }
}