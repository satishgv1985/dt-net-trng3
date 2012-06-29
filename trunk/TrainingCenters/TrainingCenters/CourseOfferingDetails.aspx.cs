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
    public partial class CourseOfferingDetails : System.Web.UI.Page
    {
       //private string CourseName;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            if (!IsPostBack)
            {
               
              //CourseName   = Convert.ToString(Request.QueryString["CourseName"].ToString());
                //string courseName = Request.QueryString["cn"];
                //System.Diagnostics.Debugger.Launch();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                try
                {
                    cmd.Connection = con;
                    cmd.CommandText = "spSearchCourseOfferingInstitutes";
                    cmd.CommandType = CommandType.StoredProcedure;

                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    con.Close();
                    //cmd.Parameters.Add(new SqlParameter("@CourseName", courseName));
                    //SqlDataReader sdrI = cmd.ExecuteReader();

                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    Label1.Text = ds.Tables[0].Rows[0][1].ToString();
                    Label2.Text = ds.Tables[0].Rows[0][2].ToString();
                    Label3.Text = ds.Tables[0].Rows[0][3].ToString();
                }

                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                //    DataTable dt = new DataTable();
                //    dt.Columns.Add("InstituteName", typeof(string));
                //    dt.Columns.Add("YearOfEstablishment", typeof(string));
                //    dt.Columns.Add("Area", typeof(string));
                //    dt.Columns.Add("CourseName", typeof(string));

                //    DataRow dr;

                //    ds.Tables.Add(dt);
                //    int i = 0;
                //    while (sdrI.Read())
                //    {
                //        dr = dt.NewRow();

                //        dr["InstituteName"] = Convert.ToString(sdrI["InstituteName"]);
                //        dr["YearOfEstablishment"] = Convert.ToString(sdrI["YearOfEstablishment"]);
                //        dr["Area"] = Convert.ToString(sdrI["Area"]);
                //        dr["CourseName"] = Convert.ToString(sdrI["CourseName"]);
                //        dt.Rows.Add(dr);
                //        i++;
                //    }
                //    Repeater1.DataSource = dt;
                //    Repeater1.DataBind();

                //    //lvInstitutes.DataSource = dt;
                //    //lvInstitutes.DataBind();
                //    con.Close();
                //}
                //catch (Exception objExp)
                //{
                //    Console.WriteLine(objExp.Message);
                //}

            }
        }
    }
}