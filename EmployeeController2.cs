using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication6.Models;

namespace WebApplication6.Controllers
{
    public class FirstController : Controller
    {
        // GET: First
        public ActionResult Index()
        {
            Employee emp = new Employee() //creating instance for the model class-employee
            {
                Name = "Sravani",
                Address = "Vizag",
                IsEmployee = true
            };
            return View(emp);
        }
        [HttpPost] //It holds the information that has been given in the server

        public ActionResult Index(Employee emp)
        {
            return View();
        }
    }
}