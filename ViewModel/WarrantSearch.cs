using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PayrollWarrant.Models;
using System.ComponentModel.DataAnnotations;

namespace PayrollWarrant.ViewModel
{
    public class WarrantSearch
    {
        public List<T101_PAY_WARNT> SearchResults { get; set; }

        [Required]
        [Display(Name = "Fiscal Year")]
        public string FISCAL_YEAR { get; set; }
        [Display(Name = "Check No")]
        public string CHECK_NO { get; set; }
        [Display(Name = "Agency")]
        public string AGENCY { get; set; }
        [Display(Name = "Payment Date")]
        public string CHK_PRINT_DATE { get; set; }
        [Display(Name = "Header Amount")]
       
        public decimal HEADER_AMT { get; set; }
        [Display(Name = "Payment Method")]
        public string PAYMENT_METHOD { get; set; }
        [Display(Name = "Void Chk Reason")]
        public string VOID_CHK_REASON { get; set; }
        [Display(Name = "Payee Number")]
        public string PAYEE_NUMBER { get; set; }
        [Display(Name = "Payee Name")]
        public string PAYEE_NAME { get; set; }
        [Display(Name = "SAP Clearing No")]
        public string SAP_CLRING_DOC_NO { get; set; }
        [Display(Name = "Reissue")]
        public string REISSUE { get; set; }
        [Display(Name = "Prefix")]
        public string PREFIX { get; set; }
        [Display(Name = "Ref Doc No")]
        public string REFDOC_FISCAL_YR { get; set; }
        [Display(Name = "Voucher No")]
        public string VOUCH_NO { get; set; }
        [Display(Name = "Page No")]
        public decimal PAGE_NO { get; set; }
        [Display(Name = "Line No")]
        public decimal LINE_NO { get; set; }
        [Required]
        [Display(Name = "Pay Type")]
        public string DETAIL_TYPE { get; set; }
        [Display(Name = "Sequence No")]
        public decimal SEQUENCE_NO { get; set; }

        [Display(Name = "Posting Date")]
        public string POSTING_DATE { get; set; }
        [Display(Name = "Detail Amount")]
        [DataType(DataType.Currency)]
        public decimal DETAIL_AMT { get; set; }
        [Display(Name = "Document Type")]
        public string DOC_TYPE { get; set; }
        [Display(Name = "Order Number")]
        public string ORDER_NUMBER { get; set; }
        [Display(Name = "WBS")]
        public string WBS_ELEMENT { get; set; }
        [Display(Name = "Cost Center")]
        public string COST_CENTER { get; set; }
        [Display(Name = "GL Account")]
        public string GL_ACCOUNT { get; set; }
        [Display(Name = "Company Code")]
        public string COMPANY_CODE { get; set; }
        [Display(Name = "SAP Invoice")]
        public string SAP_INVOICE_DOC_NO { get; set; }
        public int page { get; set; }
        public string Search { get; set; }


        public string RefDocNo { get { return string.Format("{0}{1}{2}{3}{4}{5}{6}", PREFIX, AGENCY, REFDOC_FISCAL_YR, VOUCH_NO, PAGE_NO, LINE_NO, DETAIL_TYPE); } }

    }
}
