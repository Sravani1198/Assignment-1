using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyDataAnnotations.Models
{
    public class student
    {
        [Key] //It is used to indicate primary key in the table
        public int stdID { get; set; }
        
        public string FirstName { get; set; }
        
        public string LastName { get; set; }
        
        public DateTime EnrollmentDate { get; set; }
    }
    //2.Concurrency check ==> This annotation which allows you to flag one or more properties to be used for
    //concurrency checking in the database, when user edits or deletes an entity. If you've been working with
    //Ef desiner

    public class Course
    {
        public int CourseID { get; set; }
        [ConcurrencyCheck]
        public string Title { get; set; }
        public int Credits { get; set; }
        [Timestamp,DataType("timestamp")]
        public byte[] Timestamp { get; set; }
    }
    public class Course1
    {
        public int CourseID { get; set; }
        [ConcurrencyCheck]
        public string Title { get; set; }
        public int Credits { get; set; }
        [Timestamp]
        public byte[] Timestamp { get; set; }
    }

    //3. Required: The required annotation tells entity framework that a particular property is required.

    public class student1
    {
        [Key] //it is used to indicate primary key in the table
        public int stdID { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        public DateTime EnrollmentDate { get; set; }
    }

    //MaxLength-- the maxlength attribute allows to the user specify additional property validations. It can be applied to string or array
    //entity framework sets the maximum size of the column as specified in maximum length attribute

        public class Course2
    {
        public int CourseID { get; set; }
        [ConcurrencyCheck]
        [MaxLength(24)]
        public string CourseName { get; set; }
        public int Credits { get; set; }
    }

    //MinimumLength-- the minlength attribute allow us to specify property validation as similar as maxlength

        public class Course3
    {
        public int CourseID { get; set; }
        [ConcurrencyCheck]
        [MaxLength(24),MinLength(5)] //can't be a null, it must be atleast 5  character
        public string CourseName { get; set; }
        public int Credits { get; set; }
    }

    //StringLength-- It is also allows us to specify additional property validation as like MaxLength

        public class Course4
    {
        public int CourseID { get; set; }
        [ConcurrencyCheck]
        [StringLength(25)]
        public string CourseName { get; set; }
        public int Credits { get; set; }
    }

    //**********************************Data Annotations************************************************
    //********************************System.ComponentModel.DataAnnotations.Schema**********************

    //1.Table:==> Table annotations can be done over the class but not within the class

    [Table("EmployeeInfo")]
    public class employee
    {
        [Key]
        public int empID { get; set; }

        [ConcurrencyCheck]
        [MaxLength(24),MinLength(4)]
        [Required]
        public string EmpFirstName { get; set; }

        [ConcurrencyCheck]
        [MaxLength(24),MinLength(4)]
        [Required]
        public string EmpLastName { get; set; }

        [ConcurrencyCheck]
        [StringLength(15)]
        [Required]
        public DateTime EnrollDate { get; set; }
    }

    //Admin table

        [Table("EmployeeInfo",Schema ="Admin")]
        public class employee1
       {
        [Key]
        public int empID { get; set; }
        [ConcurrencyCheck]
        [MaxLength(24), MinLength(4)]
        [Required]
        public string EmpFirstName { get; set; }

        [ConcurrencyCheck]
        [MaxLength(24), MinLength(4)]
        [Required]
        public string EmpLastName { get; set; }

        [ConcurrencyCheck]
        [StringLength(15)]
        [Required]
        public DateTime EnrollDate { get; set; }

        }

    //2.Column

    public class student2
    {
        public int ID { get; set; }
        [Column("FirstName")]
        public string FirstName { get; set; }
        [Column("LastName")]
        public string LastName { get; set; }
        public string city { get; set; }
    }

    public class student3
    {
        [Key] //It is used to indicate primary key in the table
        public int stdID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        [ForeignKey("EnrollmentID")]
        public DateTime EnrollmentDate { get; set; }
    }
    public class Enrollment
    {
        public int EnrollmentID { get; set; }
        public int CourseID { get; set; }
        public int Student { get; set; }
        public string Grade { get; set; }
        [ForeignKey("StudentID")]
        public string Course { get; set; }
    }
}