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


            if (lblUserNameMessage.Text.Contains("Taken"))
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(string), "startscript", "alert('hi')");
                return;

            }
            
            
            TextBox tbEmailID1 = new TextBox();
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
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


                tbEmailID1 = (TextBox)ucInstituteReg.FindControl("tbEmailId");
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

     
               
                int insID = (int)cmd.ExecuteScalar();
                int CourseID;

                con.Close();
                lblMessage.Visible = true;
                //lblMessage.Text = "Successfully inserted.";
                CheckBoxList cblCourses = (CheckBoxList)ucInstituteReg.FindControl("cblCourses");


                foreach (ListItem cBox in cblCourses.Items)
                {
                    if (cBox.Selected)
                    {
                        CourseID = Convert.ToInt32(cBox.Value);
                    
                    if (insID > 0)
                    {
                        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
                        SqlCommand cmd2 = new SqlCommand();
                        cmd2.Connection = con2;

                        cmd2.CommandType = CommandType.Text;
                        cmd2.CommandText = "insert into courseoffering(courseid,instituteid) values('" + insID + "',"+ CourseID +")";
                        con2.Open();
                        cmd2.ExecuteNonQuery();

                        con2.Close();
                    }
                    }
                }

                Response.Redirect("ThankYou.aspx");

            }
            catch (Exception ee)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ee.StackTrace;

            }
            finally
            {

            }



            try
            {
                MailMessage mail = new MailMessage();
                //mail.To.Add("Email ID where email is to be send");
                //mail.To.Add("korrapati_kittu@yahoo.com");
                //mail.To.Add("korrapatikittu@gmail.com");
                mail.To.Add("sirishasetti@gmail.com");
                //mail.To.Add("shivap001@gmail.com");
                //mail.To.Add("satishgv1985@gmail.com");
                mail.To.Add(tbEmailID1.Text);
                mail.From = new MailAddress("trainingcentersd@gmail.com");
                mail.Subject = "WelcomeMail";
                string clickmessage = "<a href='http://localhost/loginpage.aspx'>Click Here</a> to Login";
                string Body = "Hi " + tbUserName.Text + "<br/>Welcome To Training Centers<br/>" + clickmessage;


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
            catch (Exception ee)
            {
                lblMessage.Text = ee.Message;
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbUserName_TextChanged(object sender, EventArgs e)
        {
            bool userExists = false;
            if (userExists)
            {
                lblUserNameMessage.Text = "!Already taken";
            }
            else
            {
                lblUserNameMessage.Text = "!Available";
            }
            lblUserNameMessage.Visible = true;
        }







    }
}