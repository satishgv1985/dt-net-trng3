using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TrainingCenters.student
{
    public partial class StudentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["City"] = ddlCity.SelectedItem.Text;

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
                SqlDataSource sdsState = new SqlDataSource(ConfigurationManager.ConnectionStrings["TCdbConnectionString2"].ConnectionString, "SELECT StateId,StateName FROM State");
                DataView dv = (DataView)sdsState.Select(DataSourceSelectArguments.Empty);

                foreach (DataRow item in dv.Table.Rows)
                {
                    ddlState.Items.Add(new ListItem(item.ItemArray[1].ToString(), item.ItemArray[0].ToString()));
                }

                #endregion
                ddlState.Items.Insert(0, new ListItem("--Select--", "0"));

            }

            if (IsPostBack)
            {
               
            }
            if (!ddlCity.Items.Contains(ddlCity.Items.FindByValue("0")))
                ddlCity.Items.Insert(0, new ListItem("-Select State First-", "0"));
           

        }



        }



        //protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        //{


        //    ddlCity.Items.Clear();

        //    if (ddlState.SelectedValue == "0")
        //    {
        //        ListItem licity = new ListItem("--Select State First--", "0");
        //        ddlCity.Items.Add(licity);
        //    }
        //    else if (ddlState.SelectedValue == "1")
        //    {
        //        ListItem licity = new ListItem("Hyderabad", "1");
        //        ddlCity.Items.Add(licity);
        //        licity = new ListItem("Secundrerabad", "2");
        //        ddlCity.Items.Add(licity);

        //        licity = new ListItem("Vizag", "3");
        //        ddlCity.Items.Add(licity);
        //        licity = new ListItem("Vijayawada", "4");
        //        ddlCity.Items.Add(licity);
        //    }
        //    else if (ddlState.SelectedValue == "2")
        //    {
        //        ListItem licity = new ListItem("Bangalore", "1");
        //        ddlCity.Items.Add(licity);
        //        licity = new ListItem("Mysore", "2");
        //        ddlCity.Items.Add(licity);

        //        licity = new ListItem("Mangalore", "3");
        //        ddlCity.Items.Add(licity);
        //    }
        //}





        protected void btnStudentSubmitForm_Click(object sender, EventArgs e)
        {
            
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString2"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spStudentInsert";
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.Add(new SqlParameter("StudentName",tbStudentName.Text));
                cmd.Parameters.Add(new SqlParameter("Age",tbAge.Text));

                cmd.Parameters.Add(new SqlParameter("Area", tbArea.Text));
                cmd.Parameters.Add(new SqlParameter("Gender", rbtnGender.SelectedValue));
                cmd.Parameters.Add(new SqlParameter("QualificationID", ddlQualification.SelectedValue));
                cmd.Parameters.Add(new SqlParameter("StateID", ddlState.SelectedValue));

                cmd.Parameters.Add(new SqlParameter("EmailID", tbEmailId.Text));
                cmd.Parameters.Add(new SqlParameter("MobileNo", tbMobileNumber.Text));

                
                cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
                cmd.Parameters.Add(new SqlParameter("password", tbPassword.Text));

                int ret = cmd.ExecuteNonQuery();
                con.Close();
                lblMessage.Visible = true;
                //lblMessage.Text = "Successfully inserted.";

                Response.Redirect("ThankYou.aspx");

            }
            catch (Exception ee)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ee.StackTrace; 
                
            }

           

          


        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


     
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

        }

       
    
