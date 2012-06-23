using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using TrainingCenters.Utilities;


namespace TrainingCenters
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitUserDetals_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spGetStudentPassword";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("EmailID", tbUserEmaild.Text));
            cmd.Parameters.Add(new SqlParameter("MobileNo", tbUserMobileNumber.Text));

            con.Open();
            SqlDataReader sdrI = cmd.ExecuteReader();

            string uName = "";
            string Pass = "";


            while (sdrI.Read())
            {
                uName = Convert.ToString(sdrI["UserName"]);
                Pass = Convert.ToString(sdrI["Password"]);
            }
            con.Close();

            if (uName.Length > 0)
            {
                try
                {
                    MailMessage mail = new MailMessage();
                    //mail.To.Add("Email ID where email is to be send");
                    
                    mail.To.Add(tbUserEmaild.Text);
                    mail.From = new MailAddress("trainingcentersd@gmail.com");
                    mail.Subject = "WelcomeMail";
                    string clickmessage = "<a href='http://localhost:8353/LoginPage.aspx'>Click Here</a> to Login";
                    string Body = "Hi <br/>Welcome To Training Centers<br/><br>UserName=" + uName + "<br>Password=" + Pass + "<br></br> + clickmessage" + clickmessage;


                    mail.Body = Body;

                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                    smtp.Credentials = new System.Net.NetworkCredential
                         ("trainingcentersd@gmail.com", "kittu999");
                    //Or your Smtp Email ID and Password
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    lblSentMessage.Visible = true;
                    lblSentMessage.Text = "Your UserName and Password sent to your Email address"; 


                }
                catch (Exception ee)
                {
                    lblMessage.Visible=true;
                    lblMessage.Text = ee.StackTrace;
                }

               

            }
            else
            {
                lblSentMessage.Visible=true;
               lblSentMessage.Text = "You have entered wrong EmailID or mobile number"; 

            }

        }

       
        }
    }
