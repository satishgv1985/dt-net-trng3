using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace TrainingCenters
{
    public partial class institute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btninstsubmit_Click(object sender, EventArgs e)
        {
            TextBox tb = (TextBox)ucInstituteReg.FindControl("tbInstituteName");
            Session["InstituteName"] = tb.Text;
            Cache["InstituteName"] = tb.Text;
           

            TextBox tb1 = (TextBox)ucInstituteReg.FindControl("tbDoorNumber");
            Session["DoorNumber"] = tb1.Text;

            TextBox tb2 = (TextBox)ucInstituteReg.FindControl("tbArea");
            Session["Area"] = tb2.Text;

            TextBox tb3 = (TextBox)ucInstituteReg.FindControl("tbCity");
            Session["City"] = tb3.Text;

            TextBox tb4 = (TextBox)ucInstituteReg.FindControl("tbEmailId");
            Session["EmailId"] = tb4.Text;
            TextBox tb5 = (TextBox)ucInstituteReg.FindControl("tbMobileNumber");
            Session["MobileNumber"] = tb5.Text;

            TextBox tb6 = (TextBox)ucInstituteReg.FindControl("tbPincodeNumber");
            Session["PincodeNumber"] = tb6.Text;





            CheckBoxList cbl = (CheckBoxList)ucInstituteReg.FindControl("cblCoursesOffered");
            Session["CBL_Courses"] = cbl;

            Calendar cl = (Calendar)ucInstituteReg.FindControl("cDateOfEstablishment");
            Session["EstablishDate"] = cl.SelectedDate;

            Response.Redirect("ReadInstituteReg.aspx");
            //TextBox tb = (TextBox)ucInstituteReg.FindControl("tbDoorNumber");
            
            //Response.Redirect("ReadInstituteRegistration.aspx? " + tbInstituteName.Text + "" + tbUserName.Text +"" + tbDoorNumber.Text + ""+tbArea.Text+""+tbCity.Text+""+tbEmailId+""+tbMobileNumber);
        }


     

        
        
        
    }
}