using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.student
{
    public partial class StudentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["City"] = ddlCity.SelectedItem.Text;
        }
        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {


            ddlCity.Items.Clear();

            if (ddlState.SelectedValue == "0")
            {
                ListItem licity = new ListItem("--Select State First--", "0");
                ddlCity.Items.Add(licity);
            }
            else if (ddlState.SelectedValue == "1")
            {
                ListItem licity = new ListItem("Hyderabad", "1");
                ddlCity.Items.Add(licity);
                licity = new ListItem("Secundrerabad", "2");
                ddlCity.Items.Add(licity);

                licity = new ListItem("Vizag", "3");
                ddlCity.Items.Add(licity);
                licity = new ListItem("Vijayawada", "4");
                ddlCity.Items.Add(licity);
            }
            else if (ddlState.SelectedValue == "2")
            {
                ListItem licity = new ListItem("Bangalore", "1");
                ddlCity.Items.Add(licity);
                licity = new ListItem("Mysore", "2");
                ddlCity.Items.Add(licity);

                licity = new ListItem("Mangalore", "3");
                ddlCity.Items.Add(licity);
            }
        }

       
    }
}