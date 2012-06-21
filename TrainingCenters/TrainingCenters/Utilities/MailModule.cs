using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace TrainingCenters.Utilities
{
    public static class MailModule
    {
        public static bool SendStudentWelcomeMail(string name,string toAddress)
        {
            SmtpClient sm = new SmtpClient("smtp.gmail.com", 465);
            sm.Credentials = new System.Net.NetworkCredential("username", "passwrod");
            MailMessage mes = new MailMessage("shilpayennam@gmail.com", toAddress);           
            sm.Send(mes);
            return true;
        }

    }
}