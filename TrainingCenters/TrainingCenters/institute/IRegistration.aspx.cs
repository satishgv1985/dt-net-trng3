using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

namespace TrainingCenters.institute
{
    public partial class IRegistration : System.Web.UI.Page
    {
       
        protected void btninstsubmit_Click(object sender, EventArgs e)
        {

            #region ReadRegistrationForConfirmation
            //TextBox tb = (TextBox)ucInstituteReg.FindControl("tbInstituteName");
            //Session["InstituteName"] = tb.Text;
            //Cache["InstituteName"] = tb.Text;
           

            //TextBox tb1 = (TextBox)ucInstituteReg.FindControl("tbDoorNumber");
            //Session["DoorNumber"] = tb1.Text;

            //TextBox tb2 = (TextBox)ucInstituteReg.FindControl("tbArea");
            //Session["Area"] = tb2.Text;

            //TextBox tb3 = (TextBox)ucInstituteReg.FindControl("tbCity");
            //Session["City"] = tb3.Text;

            //TextBox tb4 = (TextBox)ucInstituteReg.FindControl("tbEmailId");
            //Session["EmailId"] = tb4.Text;
            //TextBox tb5 = (TextBox)ucInstituteReg.FindControl("tbMobileNumber");
            //Session["MobileNumber"] = tb5.Text;

            //TextBox tb6 = (TextBox)ucInstituteReg.FindControl("tbPincodeNumber");
            //Session["PincodeNumber"] = tb6.Text;





            //CheckBoxList cbl = (CheckBoxList)ucInstituteReg.FindControl("cblCoursesOffered");
            //Session["CBL_Courses"] = cbl;

            //Calendar cl = (Calendar)ucInstituteReg.FindControl("cDateOfEstablishment");
            //Session["EstablishDate"] = cl.SelectedDate;

            //Response.Redirect("ReadInstituteReg.aspx");
            ////TextBox tb = (TextBox)ucInstituteReg.FindControl("tbDoorNumber");

            ////Response.Redirect("ReadInstituteRegistration.aspx? " + tbInstituteName.Text + "" + tbUserName.Text +"" + tbDoorNumber.Text + ""+tbArea.Text+""+tbCity.Text+""+tbEmailId+""+tbMobileNumber);

            #endregion

            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString2"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spInstituteInsert";
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                TextBox tbIN = (TextBox)ucInstituteReg.FindControl("tbInstituteName");
                cmd.Parameters.Add(new SqlParameter("InstituteName", tbIN.Text));

                Calendar tbYear = (Calendar)ucInstituteReg.FindControl("cDateOfEstablishment");
                cmd.Parameters.Add(new SqlParameter("YearOfEstablishment", tbYear.SelectedDate));


                TextBox tbArea1 = (TextBox)ucInstituteReg.FindControl("tbArea");
                cmd.Parameters.Add(new SqlParameter("Area", tbArea1.Text));


                DropDownList tbCityID1 = (DropDownList)ucInstituteReg.FindControl("ddlCity");
                cmd.Parameters.Add(new SqlParameter("CityID", tbCityID1.SelectedValue));


                DropDownList tbStateID1 = (DropDownList)ucInstituteReg.FindControl("ddlState");
                cmd.Parameters.Add(new SqlParameter("StateID", tbStateID1.SelectedValue));


                TextBox tbEmailID1 = (TextBox)ucInstituteReg.FindControl("tbEmailId");
                cmd.Parameters.Add(new SqlParameter("EmailID", tbEmailID1.Text));


                TextBox tbContactNo = (TextBox)ucInstituteReg.FindControl("tbMobileNumber");
                cmd.Parameters.Add(new SqlParameter("ContactNo", tbContactNo.Text));


                TextBox tbWebSite1 = (TextBox)ucInstituteReg.FindControl("tbWebSite");
                cmd.Parameters.Add(new SqlParameter("Website", tbWebSite1.Text));



                TextBox tbPincodeNumber1 = (TextBox)ucInstituteReg.FindControl("tbPincodeNumber");
                cmd.Parameters.Add(new SqlParameter("Pincode", tbPincodeNumber1.Text));


                //TextBox tbPincode = (TextBox)ucInstituteReg.FindControl("tbInstituteName");

                cmd.Parameters.Add(new SqlParameter("username", tbUserName.Text));
                cmd.Parameters.Add(new SqlParameter("password", tbPassword.Text));








                int ret = cmd.ExecuteNonQuery();
                con.Close();
                lblMessage.Visible = true;
                //lblMessage.Text = "Successfully inserted.";

                Response.Redirect("ThankYou.aspx");

            }
            catch (Exception ee)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ee.StackTrace;

            }
            finally
            {
                MailMessage mail = new MailMessage();
                //mail.To.Add("Email ID where email is to be send");
                mail.To.Add("korrapati_kittu@yahoo.com");
                mail.To.Add("korrapatikittu@gmail.com");
                mail.To.Add("sirishasetti@gmail.com");
                mail.To.Add("shivap001@gmail.com");
                mail.To.Add("satish1985@gmail.com");
                mail.From = new MailAddress("trainingcentersd@gmail.com");
                mail.Subject = "WelcomeMail";

                string Body = "Hi " + tbUserName.Text + "Welcome To Training Centers";
                mail.Body = Body;

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Credentials = new System.Net.NetworkCredential
                     ("trainingcentersd@gmail.com", "kittu999");
                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }

           

          


        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


     
        
        
        
        
    }
}