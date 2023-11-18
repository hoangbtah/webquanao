using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using wqa.Models;

namespace wqa.Controllers
{
    public class HomeController : Controller
    {
        private QADB db = new QADB();
        public ActionResult Index()
        {
            var sanPhams = db.SanPhams.Select(s => s);

            if (Session["IdUser"] != null)
            {
                return View(sanPhams.ToList());
            }
            else
            {
                return RedirectToAction("Login", "Access");
            }
            
            
            
        }
        public ActionResult WonmenProduct()
        {
            return View();
        }
        public ActionResult KidProduct()
        {
            return View();
        }
       



    }
}