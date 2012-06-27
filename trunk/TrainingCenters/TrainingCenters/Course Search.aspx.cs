using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using TrainingCenters.getInst;
namespace TrainingCenters
{
    public partial class Course_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }


        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            gvInstitutes.DataSource= (DataView)sdsInstitutes.Select(DataSourceSelectArguments.Empty);
            gvInstitutes.DataBind();
        }

      
        }
    }




