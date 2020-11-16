using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyAppModels;
using MyAppDb.DBOutput;


namespace WebApplication8.Controllers
{
    public class HomeController : Controller
    {
        EmployeeRepository repository = null;
        public HomeController()
        {
            repository = new EmployeeRepository();
        }
        // GET: Home
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(EmployeeModel model)
        {
            if(ModelState.IsValid)
            {
                int Id = repository.AddEmployee(model);
                if(Id>0)
                {
                    ModelState.Clear();
                    ViewBag.Issuccess = "Data Added";
                }
            }
            return View();
        }

    }
}