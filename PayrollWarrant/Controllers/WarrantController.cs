using PayrollWarrant.Models;
using PayrollWarrant.ViewModel;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PayrollWarrant.Controllers
{
    public class WarrantController : Controller
    {
        private PayrollWarrantEntities1 db = new PayrollWarrantEntities1();
        private int page;

       


        // GET: Warrant
        public ActionResult Index(int page = 1)
        {
            {
                var model = new WarrantSearch();
                model.page = page;
                if (Session["PAYEE_NAME"] != null)
                    model.PAYEE_NAME = (string)Session["PAYEE_NAME"];
                if (Session["FISCAL_YEAR"] != null)
                    model.FISCAL_YEAR = (string)Session["FISCAL_YEAR"];
                if (Session["CHECK_NO"] != null)
                    model.CHECK_NO = (string)Session["CHECK_NO"];
                if (Session["DETAIL_TYPE"] != null)
                    model.DETAIL_TYPE = (string)Session["DETAIL_TYPE"];
                if (Session["query"] != null)
                {
                    //paging display 
                    var query = Session["query"] as List<Models.T101_PAY_WARNT>;
                    model.page = model.page <= 0 ? 1 : model.page;
                    ViewBag.CurrentPage = model.page;
                    ViewBag.PagingList = SharedFunctions.PagerArray(model.page, SharedFunctions.PerPage, query.Count(), this, "Index", "Warrant");
                    var pagingList = query
                        .OrderBy(p => p.PAYEE_NAME)
                        .ThenBy(p => p.CHK_PRINT_DATE)
                        .Skip((model.page - 1) * SharedFunctions.PerPage)
                        .Take(SharedFunctions.PerPage)
                        .ToList<Models.T101_PAY_WARNT>();
                    model.SearchResults = pagingList;
                }
                using (var db = new Models.PayrollWarrantEntities1())
                {
                    
                    PopulateViewBagLists(db);
                    return View(model);
                }
            }                                          
        }

        //POST: Warrant
        [HttpPost]
        public ActionResult Index(WarrantSearch data)
        {
            using (var db = new PayrollWarrantEntities1())
            {

                var newDate = DateTime.ParseExact("20170712", "yyyyMMdd", CultureInfo.InvariantCulture);
                var model = new WarrantSearch();
                PopulateViewBagLists(db);

                if (ModelState.IsValid)
                {
                    if (data != null
                         && (data.PAYEE_NAME == null)
                         && (data.FISCAL_YEAR == null)
                         && (data.CHECK_NO == null)
                         && (data.DETAIL_TYPE == null))
                    {
                        if (Session["PAYEE_NAME"] != null)
                            data.PAYEE_NAME = (string)Session["PAYEE_NAME"];
                        if (Session["FISCAL_YEAR"] != null)
                            data.FISCAL_YEAR = (string)Session["FISCAL_YEAR"];
                        if (Session["CHECK_NO"] != null)
                            data.CHECK_NO = (string)Session["CHECK_NO"];
                        if (Session["DETAIL_TYPE"] != null)
                            data.DETAIL_TYPE = (string)Session["DETAIL_TYPE"];
                        if (Session["query"] != null)
                        {
                            var query = new List<Models.T101_PAY_WARNT>();
                            data.page = data.page <= 0 ? 1 : data.page;
                            ViewBag.PagingList = SharedFunctions.PagerArray(data.page, SharedFunctions.PerPage, query.Count(), this, "Index", "Warrant");
                            var pagingList = query
                                .OrderBy(p => p.PAYEE_NAME)
                                .ThenBy(p => p.CHK_PRINT_DATE)
                                .Skip((data.page - 1) * SharedFunctions.PerPage)
                                .Take(SharedFunctions.PerPage)
                                .ToList<Models.T101_PAY_WARNT>();
                            
                            data.SearchResults = pagingList;
                        }
                    }
                    else
                    {
                        data.SearchResults = new List<Models.T101_PAY_WARNT>();

                        IQueryable<Models.T101_PAY_WARNT> query = GetSearchResults(data, db, PagingListType.Index);
                        data.page = data.page <= 0 ? 1 : data.page;
                        ViewBag.CurrentPage = data.page;
                        ViewBag.PagingList = SharedFunctions.PagerArray(data.page, SharedFunctions.PerPage, query.Count(), this, "Index", "Warrant");
                        Session["query"] = query.ToList<T101_PAY_WARNT>();
                        if (data.PAYEE_NAME != null)
                            Session["PAYEE_NAME"] = data.PAYEE_NAME;
                        if (data.FISCAL_YEAR != null)
                            Session["FISCAL_YEAR"] = data.FISCAL_YEAR;
                        if (data.CHECK_NO != null)
                            Session["CHECK_NO"] = data.CHECK_NO;
                        if (data.DETAIL_TYPE != null)
                            Session["DETAIL_TYPE"] = data.DETAIL_TYPE;
                     

                        query = query
                             .OrderBy(p => p.PAYEE_NAME)
                        .ThenBy(p => p.CHK_PRINT_DATE)
                        .Skip((data.page - 1) * SharedFunctions.PerPage)
                        .Take(SharedFunctions.PerPage)
                        .Select(c => c);
                        if (data.SearchResults == null)
                            data.SearchResults = new List<T101_PAY_WARNT>();

                        foreach (Models.T101_PAY_WARNT temp in query)
                        {
                            data.SearchResults.Add(temp);
                        }

                    }
                    return View(data);
                }
                else
                {
                    return View(model);
                }
            }

        }



        private void PopulateViewBagLists(PayrollWarrantEntities1 db)
        {
            //ViewBag.FISCAL_YEAR = db.T101_PAY_WARNT.ToList().Select(c => new SelectListItem { Value = c.FISCAL_YEAR, Text = c.FISCAL_YEAR }).ToList();
            var fiscalYear = db.T101_PAY_WARNT.Select(x => x.FISCAL_YEAR).ToList();
            ViewBag.FISCAL_YEAR = fiscalYear.Distinct().Select(m => new SelectListItem { Value = m, Text = m });

            var payTypes = new Dictionary<string, string>() { { " ", "" }, { "B", "Career Enhancement Pay" }, { "D", "Biweekly Payroll" }, { "S", "Supplemental Pay" }, { "T", "Comp Bank Payout" }, { "R", "Reissue" } };
            ViewBag.DETAIL_TYPE = payTypes.Select(c => new SelectListItem { Text = c.Value, Value = c.Key });
        }

        private IQueryable<T101_PAY_WARNT> GetSearchResults(WarrantSearch data, PayrollWarrantEntities1 db, PagingListType pagingListType)
        {
            IQueryable<Models.T101_PAY_WARNT> query = db.T101_PAY_WARNT;
         

            if (data.searchType == "Contains")
            {

                if (!(data.PAYEE_NAME == null || data.PAYEE_NAME.Equals("")))
                {
                    query = query.Where(c => c.PAYEE_NAME.Contains(data.PAYEE_NAME));
                }
                if (!(data.FISCAL_YEAR == null || data.FISCAL_YEAR.Equals("")))
                {
                    query = query.Where(c => c.FISCAL_YEAR.Equals(data.FISCAL_YEAR));
                }

                if (!(data.CHECK_NO == null || data.CHECK_NO.Equals("")))
                {
                    query = query.Where(c => c.CHECK_NO.Contains(data.CHECK_NO));

                }
                if (!(data.DETAIL_TYPE == null || data.DETAIL_TYPE.Equals("")))
                {
                    query = query.Where(c => c.DETAIL_TYPE.Contains(data.DETAIL_TYPE));

                }
                return query;
            }
            else
            {
                if (!(data.PAYEE_NAME == null || data.PAYEE_NAME.Equals("")))
                {
                    query = query.Where(c => c.PAYEE_NAME.StartsWith(data.PAYEE_NAME));
                }
                if (!(data.FISCAL_YEAR == null || data.FISCAL_YEAR.Equals("")))
                {
                    query = query.Where(c => c.FISCAL_YEAR.Equals(data.FISCAL_YEAR));
                }

                if (!(data.CHECK_NO == null || data.CHECK_NO.Equals("")))
                {
                    query = query.Where(c => c.CHECK_NO.Contains(data.CHECK_NO));

                }
                if (!(data.DETAIL_TYPE == null || data.DETAIL_TYPE.Equals("")))
                {
                    query = query.Where(c => c.DETAIL_TYPE.Contains(data.DETAIL_TYPE));

                }
                return query;
            }
       
        }
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

    }
}
