using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace TrainingCenters.institute
{
    public partial class CourseOfferingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spStudentInsert";
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();

            cmd.Parameters.Add(new SqlParameter("Name", TextBox1.Text));
                        cmd.Parameters.Add(new SqlParameter("EmailId",TextBox2.Text));
            cmd.Parameters.Add(new SqlParameter("Send enquiry", TextBox3.Text));
           // int res = cmd.ExecuteNonQuery();
            con.Close();
            MailMessage msg = new MailMessage();
            msg.To.Add("shilpayennam@gmail.com");
            msg.From = new MailAddress("trainingcentersd@gmail.com");
            msg.Subject = "subject";
            string Body = "shilpa" + TextBox1.Text + " email id is<br/>" + TextBox2.Text + "msg is" + TextBox3.Text;
            msg.Body = Body;
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("trainingcentersd@gmail.com", "kittu999");
            smtp.EnableSsl = true;
            smtp.Send(msg);
     
        }
    }
}