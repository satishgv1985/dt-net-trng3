using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            CheckBoxList cbl = (CheckBoxList)ucInstituteReg.FindControl("cblCoursesOffered");
            Session["CBL_Courses"] = cbl;

            Response.Redirect("ReadInstituteReg.aspx");
            //TextBox tb = (TextBox)ucInstituteReg.FindControl("tbDoorNumber");
            
            //Response.Redirect("ReadInstituteRegistration.aspx? " + tbInstituteName.Text + "" + tbUserName.Text +"" + tbDoorNumber.Text + ""+tbArea.Text+""+tbCity.Text+""+tbEmailId+""+tbMobileNumber);
        }


     

        
        
        
    }
}