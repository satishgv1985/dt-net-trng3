using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.admin
{
    public partial class ManageInstitutes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvInstitutes_PageIndexChanged(object sender, EventArgs e)
        {
            //gvInstitutes.SelectedIndex = -1;
            if (gvInstitutes.PageIndex == Convert.ToInt32(ViewState["pageNo"]))
            {
                gvInstitutes.SelectedIndex = Convert.ToInt32(ViewState["sIndex"]);
            }
            else
                gvInstitutes.SelectedIndex = -1;

        }

        protected void gvInstitutes_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["sIndex"] = gvInstitutes.SelectedIndex;
            ViewState["pageNo"] = gvInstitutes.PageIndex;
            //System.Diagnostics.Debugger.Launch();
            //string s =(string) gvInstitutes.DataKeyNames.GetValue(0);

            Label l = (Label)this.gvInstitutes.SelectedRow.FindControl("Label1");
            this.SqlDataSource2.SelectParameters["InstituteID"].DefaultValue = l.Text;
 
        }

        protected void gvInstitutes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.DataItem != null)
            {
                if (e.Row.Cells[4].Text.Contains("nagar"))
                {
                    e.Row.BackColor = System.Drawing.Color.Green;
                }

            }
        }
    }
}