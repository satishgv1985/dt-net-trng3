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
            

                TextBox tb = (TextBox)ucStudentReg.FindControl("tbStudentName");
                Session["StudentName"] = tb.Text;
                //Cache["InstituteName"] = tb.Text;


                TextBox tb1 = (TextBox)ucStudentReg.FindControl("tbAge");
                Session["Age"] = tb1.Text;

                TextBox tb2 = (TextBox)ucStudentReg.FindControl("tbArea");
                Session["Area"] = tb2.Text;

                DropDownList ddl1 = (DropDownList)ucStudentReg.FindControl("ddlCity");
                Session["City"] = ddl1.SelectedValue;

                DropDownList ddl2 = (DropDownList)ucStudentReg.FindControl("ddlState");
                Session["State"] = ddl2.SelectedValue;


                TextBox tb4 = (TextBox)ucStudentReg.FindControl("tbEmailId");
                Session["EmailId"] = tb4.Text;
                TextBox tb5 = (TextBox)ucStudentReg.FindControl("tbMobileNumber");
                Session["MobileNumber"] = tb5.Text;

                RadioButtonList tb6 = (RadioButtonList)ucStudentReg.FindControl("rbtnGender");
                Session["Gender"] = tb6.Text;


                TextBox tb3 = (TextBox)ucStudentReg.FindControl("tbQualification");
                Session["Qualification"] = tb3.Text;


                Response.Redirect("ReadStudentReg.aspx?UserName="+tbUserName.Text+"&Password="+tbPassword.Text);
             //   Response.Redirect("ReadQueryStrings.aspx?name=" + txtName.Text + "&rollno=" + txtRollNo.Text);

            //Response.Redirect("ReadInstituteRegistration.aspx? " + tbInstituteName.Text + "" + tbUserName.Text +"" + tbDoorNumber.Text + ""+tbArea.Text+""+tbCity.Text+""+tbEmailId+""+tbMobileNumber);

        }
       

     

        
        
        
    }

        }


       
    
