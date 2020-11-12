using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StudentRegisterAssign.Models;

namespace StudentRegisterAssign.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            Student s = new Student();
            return View();
        }

            [HttpPost]
        public ActionResult Index(Student s)
        {
            return View();
        }
    }
}
    
