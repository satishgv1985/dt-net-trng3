using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TCBusinessLogic.DTO
{
    public class InstituteDTO
    {
        public int InstituteID { get; set; }
        public string InstituteName { get; set; }
        public DateTime? YearOfEstablishment { get; set; }
        //private DateTime _yearOfEstablishment;
        //public DateTime YearOfEstablishment
        //{
        //    get
        //    {
        //        return _yearOfEstablishment;
        //    }
        //    set
        //    {
        //        if (value == null)
        //            _yearOfEstablishment = DateTime.MinValue;
        //    }
        //}

        public string Area { get; set; }
    }
}
