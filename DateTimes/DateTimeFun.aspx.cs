using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TestCSharpApp.DateTimes
{
    public partial class DateTimeFun : System.Web.UI.Page
    {

        private String GetTodaysDate()
        {


            //return "2011-07-25";

            //return DateTime.Today.ToShortDateString();

            return DateTime.Today.Year.ToString() +"-" + DateTime.Today.Day.ToString() + "-"+ DateTime.Today.Month.ToString();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(DateTime.Today);
            this.Label1.Text = GetTodaysDate();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("ouch");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("ouch;");
        }
    }
}
