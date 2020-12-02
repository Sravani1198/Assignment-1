using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ONLINE_WALLET1.Models;

namespace ONLINE_WALLET1.Controllers
{
    public class HomePageController : Controller
    {
        Wallet1Entities db = new Wallet1Entities();
        // GET: HomePage
        public ActionResult Home1()
        {
            return View();
        }     

       
        public ActionResult Login()
        {
            Wallet_details wd = new Wallet_details();
            return View(wd);
        }
        [HttpPost]
        public ActionResult Login(Wallet_details wd)
        {
            if(ModelState.IsValid)
            {
                if(db.Wallet_details.Where(x => x.Username == wd.Username && x.Password == wd.Password).FirstOrDefault()==null)
                {
                    ViewBag.data = "Invalid Username and Password";
                }
                else
                {
                    ViewBag.data = "Login Success!!";
                  return RedirectToAction("AddMoney", "HomePage");

                }
            }
            return View();
        }
        public ActionResult AddMoney()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddMoney(Wallet_details obj,string btn)
        {
            if (btn == "Add Money")
            {
                var data = db.Wallet_details.Where(y => y.Account_No == obj.Account_No).FirstOrDefault();
                if (obj.Amount <= data.Amount)
                {
                    data.Amount += obj.Amount;
                    int res = db.SaveChanges();
                    if (res == 1)
                    {
                        ViewBag.data = "Money Added Successfully!!!";
                    }

                    else
                    {
                        ViewBag.data = "Money is not added";
                    }
                }
            }
            else if(btn == "View Balance")
            {
                var data1 = db.Wallet_details.Where(y => y.Account_No == obj.Account_No).FirstOrDefault();
                ViewBag.show = "The available  balance in the account is " + data1.Amount;
            }
                    
            return View();
        }
    }
}