using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class ReadInstituteReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //TextBox tb = (TextBox)PreviousPage.Controls[0].("tbUserName");
               // lblUserName.Text = tb.Text;
            }
           // TextBox tb1 = (TextBox)PreviousPage.FindControl("tbUserName");
           // lblUserName.Text = tb1.Text;

           ////Calendar cal = (Calendar)PreviousPage.FindControl("cDateOfEstablishment");
           ////lblDateOfEstablishment.text = cal.SelectedDate;
           // TextBox tb2 = (TextBox)PreviousPage.FindControl("tbDoorNumber");
           // lblDoorNumber.Text = tb2.Text;

           // TextBox tb3 = (TextBox)PreviousPage.FindControl("tbArea");
           // lblArea.Text = tb3.Text;

           // TextBox tb4 = (TextBox)PreviousPage.FindControl("tbEmailId");
           // lblEmailId.Text = tb4.Text;

           // TextBox tb5 = (TextBox)PreviousPage.FindControl("tbCity");
           // lblCity.Text = tb5.Text;


           // TextBox tb6 = (TextBox)PreviousPage.FindControl("tbMobileNumber");
           // lblMobileNumber.Text = tb6.Text;



           // CheckBoxList cbl = (CheckBoxList)PreviousPage.FindControl("cblCoursesOffered");
           // lblMobileNumber.Text = cbl.SelectedValue;




        


        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("institute.aspx");
        }
    }
}