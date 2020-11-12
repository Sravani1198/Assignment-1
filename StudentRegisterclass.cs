using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StudentRegisterAssign.Models;

namespace StudentRegisterAssign.Models
{
    public class Student
    {
        public string Name { get; set; }
        public string Password { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public string Courses { get; set; }
        public string Skills { get; set; }
    }
}