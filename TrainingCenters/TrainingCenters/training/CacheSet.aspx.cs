using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace TrainingCenters.training
{
    public partial class CacheSet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debugger.Launch();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Normal Cache
            //Cache["name"] = txtName.Text;

            //File Based Dependency
            //CacheDependency cdFile = new CacheDependency(Server.MapPath("~/training/student.xml"));
            //Cache.Insert("name", txtName.Text,cdFile);
            

            //Multiple Files
            //String[] files = { Server.MapPath("~/training/student.xml"), Server.MapPath("~/training/books.xml") };
            //CacheDependency cdFiles = new CacheDependency(files);
            //Cache.Insert("name", txtName.Text, cdFiles);
            //lblMessage.Text = "Cache Saved Successfully";

            Cache.Insert("class", "second");
            Cache.Insert("rollno","100");
            string[] cachingKeys = { "class", "rollno" };
            CacheDependency cdFileandKeys = new CacheDependency(null, cachingKeys);
            Cache.Insert("name", txtName.Text, cdFileandKeys);


            CacheItemRemovedCallback cirCB = new CacheItemRemovedCallback(RemovedCallBackMethod);
            Cache.Insert("name", txtName.Text, null, DateTime.Now.AddSeconds(20.0), Cache.NoSlidingExpiration, CacheItemPriority.Default, cirCB);

            lblMessage.Text = "Cache Saved Successfully";
            

        }

        void RemovedCallBackMethod(string str,Object ob,CacheItemRemovedReason cir)
        {

        }

    }
}