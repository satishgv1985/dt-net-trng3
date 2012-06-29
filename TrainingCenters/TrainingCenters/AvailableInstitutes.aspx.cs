using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TrainingCenters
{
    public partial class AvailableInstitutes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string courseName = Request.QueryString["cn"];
                //System.Diagnostics.Debugger.Launch();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spSearchCourseOfferingInstitutes";
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.Add(new SqlParameter("courseName", courseName));

                SqlDataReader sdrI = cmd.ExecuteReader();


                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                dt.Columns.Add("InstituteName", typeof(string));
                //dt.Columns.Add("YearOfEstablishment", typeof(string));
                //dt.Columns.Add("Area", typeof(string));
                dt.Columns.Add("CourseName",typeof(string));

                DataRow dr;

                ds.Tables.Add(dt);
                int i = 0;
                while (sdrI.Read())
                {
                    dr = dt.NewRow();
                   
                    dr["InstituteName"] = Convert.ToString(sdrI["InstituteName"]);
                    //dr["YearOfEstablishment"] = Convert.ToString(sdrI["YearOfEstablishment"]);
                    //dr["Area"] = Convert.ToString(sdrI["Area"]);
                    dr["CourseName"] = Convert.ToString(sdrI["CourseName"]);
                    dt.Rows.Add(dr);
                    i++;
                }
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                //lvInstitutes.DataSource = dt;
                //lvInstitutes.DataBind();
              

                con.Close();
            }
        }
    }
}