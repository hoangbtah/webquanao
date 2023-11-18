using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace wqa.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        // GET: Admin/HomeAdmin
        public ActionResult Index()
        {
            //if (Session["IdUser"] != null)
            //{
            //    return View();
            //}
            //else
            //{

            //    return RedirectToAction("Login", "Access");


            //}
            return View();

        }
    }
}