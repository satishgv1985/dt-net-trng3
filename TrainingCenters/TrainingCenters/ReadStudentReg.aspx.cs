using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class ReadStudentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
          

            TextBox tb1 = (TextBox)PreviousPage.FindControl("tbUserName");
            lblUserName.Text = tb1.Text;

            TextBox tb2 = (TextBox)PreviousPage.FindControl("tbAge");
            lblAge.Text = tb2.Text;

            RadioButtonList rbtn = (RadioButtonList)PreviousPage.FindControl("rbtnGender");
            lblGender.Text = rbtn.SelectedValue;

            DropDownList ddl1 = (DropDownList)PreviousPage.FindControl("ddlQualification");
            lblQualification.Text = ddl1.SelectedValue;

            DropDownList ddl2 = (DropDownList)PreviousPage.FindControl("ddlState");
            lblState.Text = ddl2.SelectedValue;

            TextBox tb3 = (TextBox)PreviousPage.FindControl("tbEmailId");
            lblEmailId.Text = tb3.Text;

            DropDownList ddl3 = (DropDownList)PreviousPage.FindControl("ddlCity");
            lblCity.Text = ddl3.SelectedValue;


            TextBox tb4 = (TextBox)PreviousPage.FindControl("tbMobileNumber");
            lblMobileNumber.Text = tb4.Text;

            
        

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}