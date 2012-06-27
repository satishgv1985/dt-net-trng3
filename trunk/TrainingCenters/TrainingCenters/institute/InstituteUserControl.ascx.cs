using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TrainingCenters.institute
{
    public partial class InstituteUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                #region Using ADO.Net
                //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                //SqlCommand cmd = new SqlCommand();
                //cmd.Connection = con;
                //cmd.CommandText = "SELECT StateId,StateName FROM State";
                //con.Open();
                //ddlState.DataSource= cmd.ExecuteReader();                
                //ddlState.DataBind();
                //con.Close();
                #endregion

                #region Using SQLDataSource
                SqlDataSource sdsState = new SqlDataSource(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString, "SELECT StateId,StateName FROM State");
                DataView dv = (DataView)sdsState.Select(DataSourceSelectArguments.Empty);

                foreach (DataRow item in dv.Table.Rows)
                {
                    ddlState.Items.Add(new ListItem(item.ItemArray[1].ToString(), item.ItemArray[0].ToString()));
                }

                #endregion
                ddlState.Items.Insert(0, new ListItem("--Select--", "0"));
                //int maxvalue =0;

                //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                //SqlCommand cmd = new SqlCommand();
                //cmd.Connection = con;
                //cmd.CommandText = "select count(*) from Course";
                //con.Open();
                //SqlDataReader reader = cmd.ExecuteReader();
                //while (reader.Read())
                //{
                //    maxvalue= reader.GetInt32(0);
                //}


                Int16 I;
                SqlDataSource sdsCourseName = new SqlDataSource(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString, "select distinct CourseName, courseid from Course");

              
                  

                        CheckBoxList cblModels = new CheckBoxList();
                        cblModels.RepeatColumns = 2;
     
                        cblModels.DataSource = sdsCourseName;
                        cblModels.DataTextField = "CourseName";
                        cblModels.ID = "courseid";
                        cblModels.DataBind();


                        PlaceHolder1.Controls.Add(cblModels);
                    
             


            }

            if (IsPostBack)
            {
               
            }
            if (!ddlCity.Items.Contains(ddlCity.Items.FindByValue("0")))
                ddlCity.Items.Insert(0, new ListItem("-Select State First-", "0"));
           

        }



       

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlState.SelectedValue != "0")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;


                cmd.CommandText = "select cityid, cityname from City where StateID='" + ddlState.SelectedValue + "'";

                con.Open();
                ddlCity.DataSource = cmd.ExecuteReader();
                ddlCity.DataTextField = "CityName";
                ddlCity.DataValueField = "CityID";
                ddlCity.DataBind();
                con.Close();


            }
            if (!ddlCity.Items.Contains(ddlCity.Items.FindByValue("0")))
                ddlCity.Items.Insert(0, new ListItem("-Select State First-", "0"));
        }

       
    }
}