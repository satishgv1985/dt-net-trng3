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
        }

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

             //   cmd.Parameters.Add(new SqlParameter("StudentName",tbStudentName.Text));
             //   cmd.Parameters.Add(new SqlParameter("Age",tbAge.Text));

             //   cmd.Parameters.Add(new SqlParameter("Area", tbArea.Text));
             //   cmd.Parameters.Add(new SqlParameter("Gender", rbtnGender.SelectedValue));
             //cmd.Parameters.Add(new SqlParameter("QualificationID", ddlQualification.SelectedValue));
             //  cmd.Parameters.Add(new SqlParameter("StateID", ddlState.SelectedValue));

             //  cmd.Parameters.Add(new SqlParameter("EmailID", tbEmailId.Text));
             //   cmd.Parameters.Add(new SqlParameter("MobileNo", tbMobileNumber.Text));

                
             //   cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
             //   cmd.Parameters.Add(new SqlParameter("password", tbPassword.Text));



                TextBox tbStuName = (TextBox)ucStudentReg.FindControl("tbStudentName");
                cmd.Parameters.Add(new SqlParameter("StudentName", tbStuName.Text));

                TextBox tbAge1 = (TextBox)ucStudentReg.FindControl("tbAge");
                cmd.Parameters.Add(new SqlParameter("Age", tbAge1.Text));

                RadioButtonList rbtnGen = (RadioButtonList)ucStudentReg.FindControl("rbtnGender");
                cmd.Parameters.Add(new SqlParameter("Gender",rbtnGen.SelectedValue));

                TextBox tbArea1 = (TextBox)ucStudentReg.FindControl("tbArea");
                cmd.Parameters.Add(new SqlParameter("Area", tbArea1.Text));


                //DropDownList ddlQualificationID1 = (DropDownList)ucStudentReg.FindControl("ddlQualificaton");
              //  cmd.Parameters.Add(new SqlParameter("QualificationID","MCA"));


                DropDownList ddlStateID1 = (DropDownList)ucStudentReg.FindControl("ddlState");
                cmd.Parameters.Add(new SqlParameter("StateID", ddlStateID1.SelectedValue));

                 DropDownList ddlCityID1 = (DropDownList)ucStudentReg.FindControl("ddlCity");
                cmd.Parameters.Add(new SqlParameter("CityID", ddlCityID1.SelectedValue));

                TextBox tbEmailID1 = (TextBox)ucStudentReg.FindControl("tbEmailId");
                cmd.Parameters.Add(new SqlParameter("EmailID", tbEmailID1.Text));


                TextBox tbContactNo = (TextBox)ucStudentReg.FindControl("tbMobileNumber");
                cmd.Parameters.Add(new SqlParameter("MobileNo", tbContactNo.Text));


//TextBox tbWebSite1 = (TextBox)ucStudentReg.FindControl("tbWebSite");
//cmd.Parameters.Add(new SqlParameter("Website", tbWebSite1.Text));



  //TextBox tbPincodeNumber1 = (TextBox)ucStudentReg.FindControl("tbPincodeNumber");
 // cmd.Parameters.Add(new SqlParameter("Pincode", tbPincodeNumber1.Text));


                //TextBox tbPincode = (TextBox)ucInstituteReg.FindControl("tbInstituteName");

                cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
                cmd.Parameters.Add(new SqlParameter("password", tbPassword.Text));








                int res = cmd.ExecuteNonQuery();
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


     

        
        
        
    }

        }

       
    
