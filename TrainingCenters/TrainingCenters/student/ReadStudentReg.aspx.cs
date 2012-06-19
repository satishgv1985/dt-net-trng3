using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;
using TrainingCenters.Utilities;

namespace TrainingCenters.student
{
    public partial class ReadStudentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //TextBox tb1 = (TextBox)PreviousPage.FindControl("tbUserNmae");
                //lblUserName.Text = tb1.Text;

                //TextBox tb2 = (TextBox)PreviousPage.FindControl("tbPassword");
                //lblPassword.Text = tb2.Text;

                lblStudentName.Text = Convert.ToString(Session["StudentName"]);


                //  lblInstituteName.Text = Convert.ToString(Cache["InstituteName"]);

                lblAge.Text = Convert.ToString(Session["Age"]);

                lblGender.Text = Convert.ToString(Session["Gender"]);
                lblEmailId.Text = Convert.ToString(Session["EmailId"]);
                lblMobileNumber.Text = Convert.ToString(Session["MobileNumber"]);
                lblState.Text = Convert.ToString(Session["State"]);
                lblCity.Text = Convert.ToString(Session["City"]);
                lblArea.Text = Convert.ToString(Session["Area"]);
                lblQualification.Text = Convert.ToString(Session["Qualification"]);











                // lblUserName.Text = Convert.ToString(Session["UserNmae"]);
                //lblPassword.Text = Convert.ToString(Session["Password"]);


                //TextBox tb7111 = Request.QueryString["name"];
                lblUserName.Text = Convert.ToString(Request.QueryString["UserName"]);

               


                //TextBox tb8 = (TextBox)PreviousPage.FindControl("tbPassword");
                //lblPassword = tb8.Text;

                //  CheckBoxList cbNew = (CheckBoxList)Session["CBL_Courses"];



                //lblQualification.Text = Session["City"].ToString();


                //RadioButtonList rbtn = (RadioButtonList)PreviousPage.FindControl("rbtnGender");
                //lblGender.Text = rbtn.SelectedValue;

                //DropDownList ddl1 = (DropDownList)PreviousPage.FindControl("ddlQualification");
                //lblQualification.Text = ddl1.SelectedItem.Text;

                //DropDownList ddl2 = (DropDownList)PreviousPage.FindControl("ddlState");
                //lblState.Text = ddl2.SelectedValue;

                //TextBox tb3 = (TextBox)PreviousPage.FindControl("tbEmailId");
                //lblEmailId.Text = tb3.Text;

                //DropDownList ddl3 = (DropDownList)PreviousPage.FindControl("ddlCity");
                //lblCity.Text = ddl3.SelectedValue;


                //TextBox tb4 = (TextBox)PreviousPage.FindControl("tbMobileNumber");
                //lblMobileNumber.Text = tb4.Text;

            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spStudentInsert";
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                
                cmd.Parameters.Add(new SqlParameter("StudentName", lblStudentName.Text));
                cmd.Parameters.Add(new SqlParameter("Age", lblAge.Text));
                cmd.Parameters.Add(new SqlParameter("Gender", lblGender.Text));
                cmd.Parameters.Add(new SqlParameter("Area", lblArea.Text));
                cmd.Parameters.Add(new SqlParameter("Qualification", lblQualification.Text));
                cmd.Parameters.Add(new SqlParameter("StateID", lblState.Text));
                cmd.Parameters.Add(new SqlParameter("CityID", lblCity.Text));
                cmd.Parameters.Add(new SqlParameter("EmailID", lblEmailId.Text));
                cmd.Parameters.Add(new SqlParameter("MobileNo", lblMobileNumber.Text));
                cmd.Parameters.Add(new SqlParameter("username", lblUserName.Text));
                cmd.Parameters.Add(new SqlParameter("password",  Convert.ToString(Request.QueryString["Password"])));


                int res = cmd.ExecuteNonQuery();
                con.Close();

                // lblMessage.Visible = true;


               // bool ret = MailModule.SendStudentWelcomeMail(lblStudentName.Text, lblEmailId.Text);


                Response.Redirect("~/institute/ThankYou.aspx");

            }
            catch (Exception ee)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ee.StackTrace;

            }






        }
    }
}
















// TextBox tbStuName = (TextBox)ucStudentReg.FindControl("tbStudentName");
//cmd.Parameters.Add(new SqlParameter("StudentName", tbStuName.Text));



//TextBox tbAge1 = (TextBox)ucStudentReg.FindControl("tbAge");
//cmd.Parameters.Add(new SqlParameter("Age", tbAge1.Text));



//RadioButtonList rbtnGen = (RadioButtonList)ucStudentReg.FindControl("rbtnGender");
// cmd.Parameters.Add(new SqlParameter("Gender", rbtnGen.SelectedValue));



//TextBox tbArea1 = (TextBox)ucStudentReg.FindControl("tbArea");
//cmd.Parameters.Add(new SqlParameter("Area", tbArea1.Text));

//  TextBox  tbQualification = (TextBox)ucStudentReg.FindControl("tbQualificaton");
//cmd.Parameters.Add(new SqlParameter("Qualification", "mca"));


// DropDownList ddlStateID1 = (DropDownList)ucStudentReg.FindControl("ddlState");
// cmd.Parameters.Add(new SqlParameter("StateID", ddlStateID1.SelectedValue));
// DropDownList ddlCityID1 = (DropDownList)ucStudentReg.FindControl("ddlCity");
//  cmd.Parameters.Add(new SqlParameter("CityID", ddlCityID1.SelectedValue));


//TextBox tbEmailID1 = (TextBox)ucStudentReg.FindControl("tbEmailId");
//cmd.Parameters.Add(new SqlParameter("EmailID", tbEmailID1.Text));


// TextBox tbContactNo = (TextBox)ucStudentReg.FindControl("tbMobileNumber");
//cmd.Parameters.Add(new SqlParameter("MobileNo", tbContactNo.Text));


// cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
// cmd.Parameters.Add(new SqlParameter("password", tbPassword.Text));







