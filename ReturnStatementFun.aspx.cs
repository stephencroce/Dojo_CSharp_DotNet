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

namespace TestCSharpApp
{
    public partial class ReturnStatementFun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = 1;
            int y = 1;
            if(x==y)
            {
                Response.Write("WTF");
                return;  //http://www.dotnetperls.com/void  http://www.dotnetperls.com/return
                //Void methods do not require a return statement always, but you can use a 'return' in a strategic place to avoid executing unnecessary statements when you have encountered an exit condition.
           
            }
        }
    }
}
