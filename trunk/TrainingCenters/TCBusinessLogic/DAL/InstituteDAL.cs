using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TCBusinessLogic.DTO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace TCBusinessLogic.DAL
{
    public static class InstituteDAL
    {
        public static void AddInstitute(InstituteDTO i)
        {

        }

        public static InstituteDTO GetInstituteById(int id)
        {
            InstituteDTO i = new InstituteDTO();
            return i;
        }


        public static InstituteDTO GetInstituteByUserName(string un)
        {
            InstituteDTO ins = new InstituteDTO();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            string cmdText = @"select i.InstituteID,i.InstituteName,i.Area,i.YearOfEstablishment 
                                from LoginDetails ld inner join Institute i on ld.InsStuID=i.InstituteID
                                where UserName='{0}'";
            cmdText = string.Format(cmdText, un);
            cmd.CommandText = cmdText;
            cmd.Connection = con;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                ins.InstituteID = Convert.ToInt32(sdr["InstituteID"]);
                ins.InstituteName = Convert.ToString(sdr["InstituteName"]);
                ins.Area = Convert.ToString(sdr["Area"]);
                if (sdr["YearOfEstablishment"] != DBNull.Value)
                    ins.YearOfEstablishment = Convert.ToDateTime(sdr["YearOfEstablishment"]);
                else
                    ins.YearOfEstablishment = null;
            }
            else
            {
                ins = null;
            }
            con.Close();

            return ins;
        }

        public static InstituteDTO ValidateInstitute(string username, string password)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spValidateUser";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("username", username));
            cmd.Parameters.Add(new SqlParameter("password", password));
            cmd.Parameters.Add(new SqlParameter("isInst", true));

            con.Open();
            SqlDataReader sdrI = cmd.ExecuteReader();
            bool status = false;
            if (sdrI.Read())
            {
                status = Convert.ToBoolean(sdrI[0]);

            }

            con.Close();
            if (status)
            {
                return GetInstituteByUserName(username);
            }
            return null;

        }
    }
}
