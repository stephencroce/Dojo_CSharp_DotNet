using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCSharpApp.Ticker
{
    public partial class Tickers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //StringBuilder sb = new StringBuilder();
            //sb.AppendFormat("<a href=\"http://www.zombo.com\" target=\"_blank\">The innocence suspects...</a>The wreck organizes the muck...The unsound victim services the smooth acorn...Outside a twentieth star pauses your seven bump...A secret medium rants against the campaign...");
            ////.AppendFormat("  <td style=\"padding-left:2px; width:135px;{0}\"><div style=\"{1}\">Account Number:&nbsp;</div></td>", HtmlControlBuilder.BorderTop + HtmlControlBuilder.BorderLeft + HtmlControlBuilder.DefaultCellHeightStyle, HtmlControlBuilder.TextStyle10 + HtmlControlBuilder.AlignRight).AppendLine()
            
            //this.mycrawler.InnerHtml = sb.ToString();

            this.mycrawler.InnerHtml = "<a href='http://www.zombo.com' target='_blank' style='text-decoration:none;'>&nbsp; :: &nbsp; The innocence suspects</a>&nbsp; :: &nbsp; The wreck organizes the muck &nbsp; :: &nbsp; The unsound victim services the smooth acorn &nbsp; :: &nbsp;Outside a twentieth star pauses your seven bump &nbsp; :: &nbsp; A secret medium rants against the campaign";
        }
    }
}