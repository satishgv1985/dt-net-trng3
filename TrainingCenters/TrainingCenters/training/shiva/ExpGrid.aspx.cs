using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingCenters.training.shiva
{
    public partial class ExpGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.PageIndex == Convert.ToInt32(ViewState["pageNo"]))
            {
                GridView1.SelectedIndex = Convert.ToInt32(ViewState["sIndex"]);
            }
            else
                GridView1.SelectedIndex = -1;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["sIndex"] = GridView1.SelectedIndex;
            ViewState["pageNo"] = GridView1.PageIndex;
            //System.Diagnostics.Debugger.Launch();
            //string s =(string) gvInstitutes.DataKeyNames.GetValue(0);

             //Label l = (Label)this.GridView1.SelectedRow.FindControl("Label1");
           // this.SqlDataSource2.SelectParameters["InstituteID"].DefaultValue = l.Text;
 
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
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