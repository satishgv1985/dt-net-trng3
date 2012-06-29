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
            cmd.CommandText = "select EmailID from Institute where InstituteName=@InstituteName and EmailID=@EmailID";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new SqlParameter("EmailID", tbInstituteEmailId.Text));
            cmd.Parameters.Add(new SqlParameter("InstituteName",tbInstituteName.Text));

            con.Open();
            SqlDataReader sdrI = cmd.ExecuteReader();
           // int res = cmd.ExecuteNonQuery();

            string emailID = "";
          
             while (sdrI.Read())
            {
                emailID = Convert.ToString(sdrI["EmailID"]);
               
            }

            con.Close();

         


            if (emailID.Length > 0)
            {
                try
                {
                    MailMessage mail = new MailMessage();
                    //mail.To.Add("Email ID where email is to be send");

                    mail.To.Add(tbInstituteEmailId.Text);
                    mail.From = new MailAddress("trainingcentersd@gmail.com");
                    mail.Subject = "Enquiry for Course Details";
                   // string clickmessage = "<a href='http://localh>Click Here</a> to Login";
                    string Body = "Hi <br/><br/><br>" + tbInstituteName.Text+ "<br> " + tbEnquiryMessage.Text;


                    mail.Body = Body;

                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                    smtp.Credentials = new System.Net.NetworkCredential
                         ("trainingcentersd@gmail.com", "kittu999");
                    //Or your Smtp Email ID and Password
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    lblMessage.Visible = true;
                    lblMessage.Text = "Your Request has sent to " +tbInstituteEmailId.Text+" Email address";


                }
                catch (Exception ee)
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = ee.StackTrace;
                }



            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "You have entered wrong EmailID or Institute Name";

            }
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         tbInstituteEmailId.Text="";
            tbEnquiryMessage.Text="";
            tbInstituteName.Text="";
        }
        }
    }
