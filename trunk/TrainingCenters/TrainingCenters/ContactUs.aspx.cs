using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Cache;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;

namespace TrainingCenters
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttnCSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spContactInsert";
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            cmd.Parameters.Add(new SqlParameter("Name", txtName.Text));
            cmd.Parameters.Add(new SqlParameter("Mobile", txtMobile.Text));
            cmd.Parameters.Add(new SqlParameter("EmailId", txtEmail.Text));
            cmd.Parameters.Add(new SqlParameter("Message", txtMessage.Text));
            int res = cmd.ExecuteNonQuery();
            con.Close();
            //lblUserNameMessage.Visible = true;

            //Response.Redirect("ThankYou.aspx");
            MailMessage msg = new MailMessage();
            //msg.To.Add("Email ID where email is to be send");
            msg.To.Add("sirishasetti@gmail.com");
            msg.From = new MailAddress("trainingcentersd@gmail.com");
            msg.Subject = "Contact Us From TC";

            string Body = "Hi Admin. The user named" + txtName.Text + "has contacted in TC website.His email id is<br/>" + txtEmail.Text + "<br/> and mobile no:" + txtMobile.Text;
            msg.Body = Body;
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("trainingcentersd@gmail.com", "kittu999");
            smtp.EnableSsl = true;
            smtp.Send(msg);
        }

        protected void bttnCReset_Click(object sender, EventArgs e)
        {

        }
    }
}