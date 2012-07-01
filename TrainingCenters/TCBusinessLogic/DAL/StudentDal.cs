using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TCBusinessLogic.DTO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace TCBusinessLogic.DAL
{
   public static class StudentDal
    {
        //public static void AddStudent(StudentDTO s)
        //{
            
        //}

        public static StudentDTO GetStudentById(int id)
        {
            StudentDTO s = new StudentDTO();
            return s;
        }

        public static StudentDTO GetStudentByUserName(string un)
        {
            StudentDTO stu = new StudentDTO();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            
//             string cmdText = @"select i.InstituteID,i.InstituteName,i.Area,i.YearOfEstablishment 
//                                from LoginDetails ld inner join Institute i on ld.InsStuID=i.InstituteID
//                                where UserName='{0}'";
            string cmdText=@"select s.StudentID,s.StudentName,s.Area,s.Age,s.Gender,s.Qualification,s.EmailID,s.MobileNo
                            from LoginDetails ld inner join Student s on ld.InsStuID=s.StudentID
                            where UserName='{0}'";
            cmdText = string.Format(cmdText, un);
            cmd.CommandText = cmdText;
            cmd.Connection = con;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                stu.StudentID= Convert.ToInt32(sdr["studentID"]);
                stu.StudentName = Convert.ToString(sdr["StudentName"]);
                stu.Area = Convert.ToString(sdr["Area"]);
                stu.Age = Convert.ToString(sdr["Age"]);
                stu.Gender = Convert.ToString(sdr["Gender"]);
                stu.MobileNo = Convert.ToString(sdr["MobileNo"]);
                stu.EmailID = Convert.ToString(sdr["EmailID"]);
                stu.Qualification=Convert.ToString(sdr["Qualification"]);
               // stu.CityID=Convert.ToInt32(sdr["CityID"]);
               // stu.StateID=Convert.ToInt32(sdr["StateID"]);
            }
            else
            {
                stu=null;
            }
            con.Close();

            return stu;

        }


        public static StudentDTO ValidateStudent(string username, string password)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TCdbConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "spValidateUser";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("username", username));
            cmd.Parameters.Add(new SqlParameter("password", password));
            cmd.Parameters.Add(new SqlParameter("isInst", false));

            con.Open();
            SqlDataReader sdrS = cmd.ExecuteReader();
            bool status = false;
            if (sdrS.Read())
            {
                status = true;

            }
            con.Close();
            if (status)
            {
                return GetStudentByUserName(username);
            }
            return null;

        }
    }
}
