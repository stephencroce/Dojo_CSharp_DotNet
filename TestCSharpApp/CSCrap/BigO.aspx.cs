using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCSharpApp.CSCrap
{
    public partial class BigO1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //new up a bigO.     For an explanation of this crap, follow the declaration to the corresponding class.

            BigO bigO = new BigO();
            //String[] namesOfKids = new string[]{null};
            //String[] namesOfKids = new string[] { null, "jake", "alex", "jake", "erin" };
            String[] namesOfKids = new string[]{"alex", "jake", "erin"};
            Response.Write(bigO.IsFirstElementNull(namesOfKids) ? "at least we know the first name is definitely null, but there may be more names." : "there is at least one name");
            Response.Write("<br>");
            Response.Write("Does my list of kids include jake? " + bigO.ContainsValue(namesOfKids,"jake"));
            Response.Write("<br>");
            Response.Write("  Jake found at position " + bigO.ValueAt(namesOfKids, "jake"));
            Response.Write("<br>");
            Response.Write("  ..and this does this list contain duplicates? " + bigO.ContainsDuplicates(namesOfKids));

        }
    }
}