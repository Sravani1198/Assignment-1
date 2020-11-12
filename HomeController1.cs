using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyDataAnnotations.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewData["Username"] = "Sravani";
            ViewData["Check"] = 1;
            ViewData["AS"] = 112345678;
            ViewData["LastName"] = "Kumari";

            return View();
        }
        //ViewBag - Example
        public ActionResult about()
        {
            ViewBag.Username = "Sravani";
            ViewBag.Check = 1;
            ViewBag.AS = 112345678;
            ViewBag.LastName = "Kumari";

            return View();
        }
        //Tempdata-Example

        public ActionResult Index21() //Action
        {
            ViewData["Username"] = "Sravani";
            return RedirectToAction("Index1");
            
        }
        public ActionResult Index1() //Viewbag and Viewdata remaining same
        {
            ViewBag.data = TempData["Username"].ToString();
            return View();
        }
    }
}