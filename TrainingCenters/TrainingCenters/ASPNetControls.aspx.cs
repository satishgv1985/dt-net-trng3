using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters
{
    public partial class ASPNetControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {


            }
        }

        protected void ddlCourses_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubjects.Items.Clear();

            if (ddlCourses.SelectedValue == "0")
            {
                ListItem ltSub = new ListItem("--Select Course First--", "0");
                ddlSubjects.Items.Add(ltSub);
            }
            else if (ddlCourses.SelectedValue == "1")
            {
                ListItem ltSub = new ListItem("MPC", "1");
                ddlSubjects.Items.Add(ltSub);
                ltSub = new ListItem("BiPC", "2");
                ddlSubjects.Items.Add(ltSub);
                //ddlSubjects.Items.Add(
            }

            else if (ddlCourses.SelectedValue == "2")
            {
                ListItem ltSub = new ListItem("CSE", "1");
                ddlSubjects.Items.Add(ltSub);
                ltSub = new ListItem("ECE", "2");
                ddlSubjects.Items.Add(ltSub);
            }
        }
    }
}