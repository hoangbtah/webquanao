using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using wqa.Models;

namespace wqa.Controllers
{
    public class ShopController : Controller
    {
        // GET: Shop
        private QADB db = new QADB();
        public ActionResult Index()
        {
            var sanPhams = db.SanPhams.Select(s => s);
            return View(sanPhams.ToList());
           
        }
        public ActionResult ProductDetail(string masp)
        {
            var sanpham = db.SanPhams.SingleOrDefault(m => m.MaSP == masp);
            return View(sanpham);
        }
        [ChildActionOnly]
        public PartialViewResult Menu()
        {
            var list = db.LoaiSanPhams.ToList();
            return PartialView(list);
        }
        [Route("pro/probydm/{maloai}")]
        public ActionResult ListProByDM(string maloai)
        {
            var list = db.SanPhams.Where(m => m.MaLoai == maloai).ToList();
            return View(list);
        }
    }
}